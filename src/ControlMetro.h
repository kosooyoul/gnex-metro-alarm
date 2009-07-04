
void ControlMetro(int key){
	int ret;

	switch(mode){
		case MODE_MAIN:
			switch(key){
				case SWAP_KEY_RELEASE:
					metroShowMoveX = 0;
					metroShowMoveY = 0;
					break;
				case SWAP_KEY_LEFT:
					metroShowMoveX -= DEFAULT_MOVEMENT;
					break;
				case SWAP_KEY_RIGHT:
					metroShowMoveX += DEFAULT_MOVEMENT;
					break;
				case SWAP_KEY_UP:
					metroShowMoveY -= DEFAULT_MOVEMENT;
					break;
				case SWAP_KEY_DOWN:
					metroShowMoveY += DEFAULT_MOVEMENT;
					break;
				case SWAP_KEY_OK:	//주변역 선택, 있으면 선택 모드로
					if(selectedStartStation && selectedEndStation) break;	//

					if(FindSelectedStation(metroShowX, metroShowY) > 0){
						refresh = TRUE;
						DrawMetroMain();
						SaveLCD();
						ChangeMode(MODE_SELECT_STATION);
					}
					break;
				case SWAP_KEY_F1:
					ChangeMode(MODE_TRACKING);
					break;
				case SWAP_KEY_F2:
					ResetStretch(0);
					break;
			}
			break;

		case MODE_SELECT_STATION:
			switch(key){
				case SWAP_KEY_UP:
					if(selectedMenuIndex > 0) selectedMenuIndex--;
					else selectedMenuIndex = SelectedStationCount - 1;
					break;
				case SWAP_KEY_DOWN:
					if(selectedMenuIndex < SelectedStationCount - 1) selectedMenuIndex++;
					else selectedMenuIndex = 0;
					break;
				case SWAP_KEY_OK:
					if(selectedStartStation == FALSE){
						selectedStartStation = metroStation[SelectedStation[selectedMenuIndex]].id;
						ChangeMode(MODE_MAIN);
					}else if(selectedEndStation == FALSE){
						selectedEndStation = metroStation[SelectedStation[selectedMenuIndex]].id;
						findOption = FIND_STATION_TIME;
						ret = FindPath(selectedStartStation, selectedEndStation);
						ChangeMode(MODE_PATH);
					}
					break;
				case SWAP_KEY_F2:
				case SWAP_KEY_CLR:
					ChangeMode(MODE_MAIN);
					break;
			}
			break;
		case MODE_PATH:
			switch(key){
				case SWAP_KEY_F1:
					if(findOption == FIND_STATION_TIME)findOption = FIND_STATION_COUNT;
					else findOption = FIND_STATION_TIME;
					ret = FindPath(selectedStartStation, selectedEndStation);
					break;
				case SWAP_KEY_OK:
					SaveROM();	//SAVE
					ChangeMode(MODE_MAIN);
					break;
				case SWAP_KEY_F2:
					LoadROM();	//CANCEL -> LOAD
				case SWAP_KEY_CLR:
					ChangeMode(MODE_MAIN);
					break;
			}
			break;
		case MODE_TRACKING:
			switch(key){
				case SWAP_KEY_F1:
					selectedStartStation = FALSE;
					selectedEndStation = FALSE;
					SaveROM();	//SAVE
					break;
				case SWAP_KEY_F2:
				case SWAP_KEY_CLR:
					ChangeMode(MODE_MAIN);
					break;
			}
			break;
	}

	//선택표시
	switch(key){
		case SWAP_KEY_F1:
			SetColor(S_BLACK);
			FillRectEx(0, swHeight - 22, 74, swHeight, 3);
			FlushPartial(0, swHeight - 22, 74, swHeight);
			break;
		case SWAP_KEY_OK:
			SetColor(S_BLACK);
			FillRectEx(80, swHeight - 22, swWidth - 76, swHeight, 3);
			FlushPartial(80, swHeight - 22, swWidth - 76, swHeight);
			break;
		case SWAP_KEY_F2:
			SetColor(S_BLACK);
			FillRectEx(swWidth - 75, swHeight - 22, swWidth, swHeight, 3);
			FlushPartial(swWidth - 75, swHeight - 22, swWidth, swHeight);
			break;
	}

}

void ChangeMode(int nextMode){
	savedBackground = FALSE;
	refresh = TRUE;

	switch(mode){
		case MODE_MAIN:
			metroShowMoveX = 0;
			metroShowMoveY = 0;
			break;
		case MODE_SELECT_STATION:
			break;

		case MODE_PATH:
			
			break;
		case MODE_TRACKING:
			//trackingCurrentStationIndex = NULL;
			//trackingPrevStationIndex = NULL;
			break;
	}
	
	mode = nextMode;
	selectedMenuIndex = 0;

}