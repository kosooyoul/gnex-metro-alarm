#define PATH_ICON_TOP	60
#define PATH_NAME_TOP	54
#define PATH_ICON_TOP_R	54
#define PATH_ICON_BOT_R	64

int savedBackground = FALSE;

void DrawMetro(){
	switch(mode){
		case MODE_MAIN:
			DrawMetroMain();
			DrawMainInterface();
			break;
		case MODE_SELECT_STATION:
			DrawMetroSelectStation();
			DrawSelectStatioInterface();
			break;
		case MODE_PATH:
			DrawMetroPath();
			DrawPathInterface();
			break;
		case MODE_TRACKING:
			DrawMetroTranking();
			if(runningType == 0) DrawTrackingInterface();	//일반실행 모드에서만
			else DrawTrackingInfo();
			break;
	}
}

void DrawStationInfo(){
	string tempString;
	//역표시
	SetFontAlign(S_ALIGN_LEFT);
	if(selectedStartStation != FALSE){
		SetColor(DataLineColor[GetLineNumber(selectedStartStation)]);
		MakeStrStr(tempString, "  출발역 : %s", DataStationName[metroStation[GetMetroStationById(selectedStartStation)].name]);
	}else{
		SetColor(S_DGRAY);
		MakeStrStr(tempString, "  출발역 : %s", "선택 안함");
	}
	FillRectEx(0, 0, swWidth, 21, 1);
	DrawStr(15,  6, tempString);
	SetColor(S_LGRAY);
	DrawHLine(0, swWidth, 22);

	if(selectedEndStation != FALSE){
		SetColor(DataLineColor[GetLineNumber(selectedEndStation)]);
		MakeStrStr(tempString, "목적지역 : %s", DataStationName[metroStation[GetMetroStationById(selectedEndStation)].name]);
	}else{
		SetColor(S_DGRAY);
		MakeStrStr(tempString, "목적지역 : %s", "선택 안함");
	}
	FillRectEx(0, 23, swWidth, 43, 1);
	DrawStr(15, 28, tempString);
	SetColor(S_LGRAY);
	DrawHLine(0, swWidth, 44);
}

void DrawTrackingInfo(){
	string tempString;
	//역표시
	SetFontAlign(S_ALIGN_LEFT);
	if(selectedStartStation != FALSE){
		SetColor(DataLineColor[GetLineNumber(selectedStartStation)]);
		MakeStrStr(tempString, "  출발역 : %s", DataStationName[metroStation[GetMetroStationById(selectedStartStation)].name]);
	}else{
		SetColor(S_DGRAY);
		MakeStrStr(tempString, "  출발역 : %s", "선택 안함");
	}
	FillRectEx(0, 0, swWidth, 21, 1);
	DrawStr(15,  6, tempString);
	SetColor(S_LGRAY);
	DrawHLine(0, swWidth, 22);
	
	if(selectedEndStation != FALSE){
		SetColor(DataLineColor[GetLineNumber(selectedEndStation)]);
		MakeStrStr(tempString, "목적지역 : %s", DataStationName[metroStation[GetMetroStationById(selectedEndStation)].name]);
	}else{
		SetColor(S_DGRAY);
		MakeStrStr(tempString, "목적지역 : %s", "선택 안함");
	}
	FillRectEx(0, 23, swWidth, 43, 1);
	DrawStr(15,  28, tempString);
	SetColor(S_LGRAY);
	DrawHLine(0, swWidth, 44);

	if(trackingCurrentStationIndex != NULL){
		SetColor(DataLineColor[GetLineNumber(metroStation[trackingCurrentStationIndex].id)]);
		MakeStrStr(tempString, "  현재역 : %s", DataStationName[metroStation[trackingCurrentStationIndex].name]);
	}else{
		SetColor(S_DGRAY);
		MakeStrStr(tempString, "  현재역 : %s", "선택 안함");
	}
	FillRectEx(0, 45, swWidth, 65, 1);
	DrawStr(15, 50, tempString);
	SetColor(S_LGRAY);
	DrawHLine(0, swWidth, 66);

}

void DrawPathInterface(){
	string tempString;
	//메뉴
	SetColor(S_DGRAY);
	FillRectEx(0, swHeight - 22, swWidth, swHeight, 1);
	SetColor(S_LGRAY);
	DrawHLine(0, swWidth, swHeight - 22);
	SetFontType(S_FONT_LARGE, S_WHITE, S_TRANSPARENT, S_ALIGN_CENTER);
	if(findOption == FIND_STATION_TIME) DrawStr(30 , swHeight - 17, "최소역");
	else DrawStr(30 , swHeight - 17, "최단시간");
	DrawStr(swWidth / 2, swHeight - 17, "설정");
	DrawStr(swWidth - 30, swHeight - 17, "취소");

	SetColor(S_DGRAY);
	FillRectEx(swWidth - 30, swHeight - 44, swWidth, swHeight - 23, 2);
	SetColor(S_LGRAY);
	DrawHLine(swWidth - 30, swWidth, swHeight - 44);
	MakeStr1(tempString, "x %d", STRETCH_METRO_SIZE);
	DrawStr(swWidth - 14, swHeight - 39, tempString);

	DrawStationInfo();
}

void DrawSelectStatioInterface(){
	string tempString;
	//메뉴
	SetColor(S_DGRAY);
	FillRectEx(0, swHeight - 22, swWidth, swHeight, 1);
	SetColor(S_LGRAY);
	DrawHLine(0, swWidth, swHeight - 22);
	SetFontType(S_FONT_LARGE, S_WHITE, S_TRANSPARENT, S_ALIGN_CENTER);
	DrawStr(30 , swHeight - 17, "메뉴");
	DrawStr(swWidth / 2, swHeight - 17, "역 선택");
	DrawStr(swWidth - 30, swHeight - 17, "취소");

	SetColor(S_DGRAY);
	FillRectEx(swWidth - 30, swHeight - 44, swWidth, swHeight - 23, 2);
	SetColor(S_LGRAY);
	DrawHLine(swWidth - 30, swWidth, swHeight - 44);
	MakeStr1(tempString, "x %d", STRETCH_METRO_SIZE);
	DrawStr(swWidth - 14, swHeight - 39, tempString);

	DrawStationInfo();
}

void DrawMainInterface(){
	string tempString;
	//메뉴
	SetColor(S_DGRAY);
	FillRectEx(0, swHeight - 22, swWidth, swHeight, 1);
	SetColor(S_LGRAY);
	DrawHLine(0, swWidth, swHeight - 22);
	SetFontType(S_FONT_LARGE, S_WHITE, S_TRANSPARENT, S_ALIGN_CENTER);
	DrawStr(30 , swHeight - 17, "메뉴");
	DrawStr(swWidth / 2, swHeight - 17, "역 선택");
	DrawStr(swWidth - 30, swHeight - 17, "크기변경");

	SetColor(S_DGRAY);
	FillRectEx(swWidth - 30, swHeight - 44, swWidth, swHeight - 23, 2);
	SetColor(S_LGRAY);
	DrawHLine(swWidth - 30, swWidth, swHeight - 44);
	MakeStr1(tempString, "x %d", STRETCH_METRO_SIZE);
	DrawStr(swWidth - 14, swHeight - 39, tempString);

	DrawStationInfo();
}

void DrawTrackingInterface(){
	string tempString;
	//메뉴
	SetColor(S_DGRAY);
	FillRectEx(0, swHeight - 22, swWidth, swHeight, 1);
	SetColor(S_LGRAY);
	DrawHLine(0, swWidth, swHeight - 22);
	SetFontType(S_FONT_LARGE, S_WHITE, S_TRANSPARENT, S_ALIGN_CENTER);
	DrawStr(30 , swHeight - 17, "메뉴");
	//DrawStr(swWidth / 2, swHeight - 17, "역 선택");
	DrawStr(swWidth - 30, swHeight - 17, "추적종료");

	SetColor(S_DGRAY);
	FillRectEx(swWidth - 30, swHeight - 44, swWidth, swHeight - 23, 2);
	SetColor(S_LGRAY);
	DrawHLine(swWidth - 30, swWidth, swHeight - 44);
	MakeStr1(tempString, "x %d", STRETCH_METRO_SIZE);
	DrawStr(swWidth - 14, swHeight - 39, tempString);

	DrawTrackingInfo();
}

void DrawMetroTranking(){
	//배경 미니맵
	if(savedBackground == FALSE){
		ClearBlack();
		DrawMiniMap(MINIMAP_LEFT, MINIMAP_TOP, metroShowX / STRETCH_METRO_SIZE, metroShowY / STRETCH_METRO_SIZE);
		SaveLCD();
		savedBackground = TRUE;
	}else{
		RestoreLCD();
	}

	//refresh_partial
	if(refresh_partial == TRUE){
		SetFontType(S_FONT_LARGE, S_WHITE, S_TRANSPARENT, S_ALIGN_LEFT);
		DrawStation(metroShowX, metroShowY);
		SaveLCD();
		refresh_partial = FALSE;
	}
	
	DrawCurrentStation();
/*
	if(trackingPrevStationIndex != NULL){
		DrawStr(150,  85, DataStationName[metroStation[trackingPrevStationIndex].name]);
	}
	if(trackingCurrentStationIndex != NULL){
		DrawStr(150, 125, DataStationName[metroStation[trackingCurrentStationIndex].name]);
	}
//*/
	if(trackingCurrentStationIndex == NULL){
		SetColor(S_DGRAY);
		FillRectEx(swWidth / 2 - 110, swHeight / 2 - 20, swWidth / 2 + 110, swHeight / 2 + 20, 1);
		SetColor(S_LGRAY);
		DrawRect(swWidth / 2 - 110, swHeight / 2 - 20, swWidth / 2 + 110, swHeight / 2 + 20);
		SetFontAlign(S_ALIGN_CENTER);
		DrawStr(swWidth / 2, swHeight / 2 - 5, "현재 역을 찾고 있습니다.");
	}

	SetColor(S_DGRAY);
	FillRectEx(swWidth / 2 - 30, swHeight / 2 + 30, swWidth / 2 + 30, swHeight / 2 + 51, 1);
	SetColor(S_LGRAY);
	DrawRect(swWidth / 2 - 30, swHeight / 2 + 30, swWidth / 2 + 30, swHeight / 2 + 51);
	DrawInt(swWidth / 2, swHeight / 2 + 35, currentMobileCenterId);

}

void DrawMetroPath(){
	int i;
	RestoreLCD();

	//배경
	SetColor(S_BLACK);
	FillRectEx(0, 45, swWidth - 1, swHeight - 23, 1);
	
	SetFont(S_FONT_LARGE);
	SetFontColor(S_WHITE, S_TRANSPARENT);

	if(resultPathSize == 0){
		SetFontAlign(S_ALIGN_LEFT);
		DrawStr(20, PATH_NAME_TOP, "경로를 찾을 수 없습니다.");

	}else{
		for(i = 0; i < resultPathSize; i++){
			//역아이콘과 노선
			if(i < resultPathSize - 1){
				SetColor(DataLineColor[GetLineNumber(saveJointList[resultPath[i + 1]].id)]);
				DrawStationLine(swWidth / 2 - 89, swHeight / 2 - 94 + i * 20, swWidth / 2 - 89, swHeight / 2 - 74 + i * 20);
			}
			FillRect(swWidth / 2 - 95, PATH_ICON_TOP_R + i * 20, swWidth / 2 - 85, PATH_ICON_BOT_R + i * 20);
			DrawStationIcon(swWidth / 2 - 89, PATH_ICON_TOP + i * 20);	//역 그림
			DrawStationIcon2(swWidth / 2 - 89, PATH_ICON_TOP + i * 20);	//역 그림
			//노선이름
			SetFontAlign(S_ALIGN_LEFT);
			if(i < resultPathSize - 1)DrawStr(swWidth / 2 - 77, PATH_NAME_TOP + i * 20, DataLineName[metroLine[GetLineNumber(saveJointList[resultPath[i + 1]].id)].name]);
			else DrawStr(swWidth / 2 - 77, PATH_NAME_TOP + i * 20, DataLineName[metroLine[GetLineNumber(saveJointList[resultPath[i]].id)].name]);
			//역이름
			SetFontAlign(S_ALIGN_RIGHT);
			DrawStr(swWidth / 2 + 60, PATH_NAME_TOP + i * 20, DataStationName[metroStation[GetMetroStationById(saveJointList[resultPath[i]].id)].name]);
			//소요시간
			if(i == 0){
				DrawStr(swWidth / 2 + 100, PATH_NAME_TOP + i * 20, "출발");
			}if(i > 0){
				DrawInt(swWidth / 2 +  85, PATH_NAME_TOP + i * 20, saveJointList[resultPath[i]].time);

				if(findOption == FIND_STATION_TIME) DrawStr(swWidth / 2 + 100, PATH_NAME_TOP + i * 20, "분");
				else  DrawStr(swWidth / 2 + 100, PATH_NAME_TOP + i * 20, "개");
			
			}
		}
	}
}

void DrawMetroMain(){
	//배경 미니맵
	if(savedBackground == FALSE){
		ClearBlack();
		DrawMiniMap(MINIMAP_LEFT, MINIMAP_TOP, metroShowX / STRETCH_METRO_SIZE, metroShowY / STRETCH_METRO_SIZE);
		SaveLCD();
		savedBackground = TRUE;
	}else{
		RestoreLCD();
	}

	//작은 선택자
	SetColor(S_DGRAY);
	DrawMiniSelector(MINIMAP_LEFT + (metroShowX+swWidth/2) / 5 / STRETCH_METRO_SIZE, MINIMAP_TOP + (metroShowY+swHeight/2) / 5 / STRETCH_METRO_SIZE);
	//큰 노선
	SetFontType(S_FONT_LARGE, S_WHITE, S_TRANSPARENT, S_ALIGN_LEFT);
	DrawStation(metroShowX, metroShowY);
	//큰 선택자
	SetColor(S_BLUESTAR);
	DrawRect(swWidth / 2 - SLECTED_AREA_WIDTH, swHeight / 2 - SLECTED_AREA_HEIGHT, swWidth / 2 + SLECTED_AREA_WIDTH, swHeight / 2 + SLECTED_AREA_HEIGHT);
}

void DrawMetroSelectStation(){
	int i;
	RestoreLCD();
	//선택한역 표시
	SetColor(DataLineColor[GetLineNumber(metroStation[SelectedStation[selectedMenuIndex]].id)]);
	DrawStationIcon(metroStation[SelectedStation[selectedMenuIndex]].x - metroShowX, metroStation[SelectedStation[selectedMenuIndex]].y - metroShowY);
	CopyImage(metroStation[SelectedStation[selectedMenuIndex]].x - metroShowX, metroStation[SelectedStation[selectedMenuIndex]].y - metroShowY, imgStationSelected);

	//배경
	SetColor(S_BLACK);
	FillRectEx(0, 45, swWidth - 1, swHeight - 23, 1);

	//선택표시
	SetColor(S_BLUESTAR);
	DrawRect(swWidth / 2 - 110, 50 + selectedMenuIndex * 20, swWidth / 2 + 110, 69 + selectedMenuIndex * 20);

	//내용
	SetFont(S_FONT_LARGE);
	SetFontColor(S_WHITE, S_TRANSPARENT);
	for(i = 0; i < SelectedStationCount; i++){
		//역아이콘
		SetColor(DataLineColor[GetLineNumber(metroStation[SelectedStation[i]].id)]);
		FillRect(swWidth / 2 - 95, PATH_ICON_TOP_R + i * 20, swWidth / 2 - 85, PATH_ICON_BOT_R + i * 20);
		DrawStationIcon(swWidth / 2 - 89, PATH_ICON_TOP + i * 20);	//역 그림
		DrawStationIcon2(swWidth / 2 - 89, PATH_ICON_TOP + i * 20);	//역 그림
		
		//SetColor(DataLineColor[GetLineNumber(metroStation[SelectedStation[i]].id)]);
		//FillRect(swWidth / 2 - 95, swHeight / 2 - 99 + i * 20, swWidth / 2 - 85, swHeight / 2 - 89 + i * 20);
		//노선이름
		SetFontAlign(S_ALIGN_LEFT);
		DrawStr(swWidth / 2 - 77, PATH_NAME_TOP + i * 20, DataLineName[metroLine[GetLineNumber(metroStation[SelectedStation[i]].id)].name]);
		//역이름
		SetFontAlign(S_ALIGN_RIGHT);
		DrawStr(swWidth / 2 + 95, PATH_NAME_TOP + i * 20, DataStationName[metroStation[SelectedStation[i]].name]);
	}

}

/* MODE_MAIN */
void DrawStation(int x, int y){
	string tempString;
	int prevX, prevY;
	int i;

	//역 그리기
	for(i = 0; i < METRO_STATION_SIZE; i++){
		if(GetLineIndex(metroStation[i].id) == 0){
			SetColor(DataLineColor[GetLineNumber(metroStation[i].id)]);
		}
		if(metroStation[i].x - x > -DRAW_OUT_WIDTH && metroStation[i].x - x < swWidth + DRAW_OUT_WIDTH
		&& metroStation[i].y - y > -DRAW_OUT_WIDTH && metroStation[i].y - y < swHeight + DRAW_OUT_WIDTH){
			if(metroStation[i].option == STATION_NORMAL || metroStation[i].option == STATION_CLOSED){
				DrawStationIcon(metroStation[i].x - x, metroStation[i].y - y);	//역 그림
			}
		}
	}

	//노선 그리기
	for(i = 0; i < METRO_STATION_SIZE; i++){
		if(GetLineIndex(metroStation[i].id) == 0){
			prevX = metroStation[i].x - x;
			prevY = metroStation[i].y - y;
			SetColor(DataLineColor[GetLineNumber(metroStation[i].id)]);
		}
		if(metroStation[i].option == STATION_NONE) continue;
		
		if(metroStation[i].x - x > -DRAW_OUT_WIDTH && metroStation[i].x - x < swWidth + DRAW_OUT_WIDTH
		&& metroStation[i].y - y > -DRAW_OUT_WIDTH && metroStation[i].y - y < swHeight + DRAW_OUT_WIDTH){
			DrawStationLine(prevX, prevY, metroStation[i].x - x, metroStation[i].y - y);
		}else if(prevX > -DRAW_OUT_WIDTH && prevX < swWidth + DRAW_OUT_WIDTH
			  && prevY > -DRAW_OUT_WIDTH && prevY < swHeight + DRAW_OUT_WIDTH){
			DrawStationLine(prevX, prevY, metroStation[i].x - x, metroStation[i].y - y);
		}
		
		prevX = metroStation[i].x - x;
		prevY = metroStation[i].y - y;
	}

	//역 그리기
	for(i = 0; i < METRO_STATION_SIZE; i++){
		if(GetLineIndex(metroStation[i].id) == 0){
			SetColor(DataLineColor[GetLineNumber(metroStation[i].id)]);
		}
		if(metroStation[i].x - x > -DRAW_OUT_WIDTH && metroStation[i].x - x < swWidth + DRAW_OUT_WIDTH
		&& metroStation[i].y - y > -DRAW_OUT_WIDTH && metroStation[i].y - y < swHeight + DRAW_OUT_WIDTH){
			if(metroStation[i].option == STATION_NORMAL || metroStation[i].option == STATION_CLOSED){
				DrawStationIcon2(metroStation[i].x - x, metroStation[i].y - y);	//역 그림
			}
		}
	}

	//역 이름표시
	for(i = 0; i < METRO_STATION_SIZE; i++){
		if(GetLineIndex(metroStation[i].id) == 0){
			SetColor(DataLineColor[GetLineNumber(metroStation[i].id)]);
		}
		if(metroStation[i].option == STATION_NORMAL){
			if(STRETCH_METRO_SIZE > 1){
				if(StrLen(DataStationName[metroStation[i].name]) > STATION_NAME_WIDTH){
					DrawMultiLineText(DataStationName[metroStation[i].name],		//역 이름
					metroStation[i].x - x + STATION_NAME_LEFT, metroStation[i].y - y + STATION_NAME_TOP, STATION_NAME_WIDTH, 15);
				}else{
					DrawStr(metroStation[i].x - x + STATION_NAME_LEFT, metroStation[i].y - y + STATION_NAME_TOP, DataStationName[metroStation[i].name]);
				}
			}else{
				StrSub(tempString, DataStationName[metroStation[i].name], 0, 2);
				MakeStrStr(tempString, "%s..", tempString);
				DrawStr(metroStation[i].x - x + STATION_NAME_LEFT, metroStation[i].y - y + STATION_NAME_TOP, tempString);
			}
		}
	}

	//교차점 그리기
	for(i = 1; i < METRO_JOINT_SIZE ;i ++){
		prevX = metroStation[GetMetroStationById(metroJoint[i].id1)].x - x;
		prevY = metroStation[GetMetroStationById(metroJoint[i].id1)].y - y;
		if(prevX > -DRAW_OUT_WIDTH && prevX < swWidth + DRAW_OUT_WIDTH
		&& prevY > -DRAW_OUT_WIDTH && prevY < swHeight + DRAW_OUT_WIDTH){
			DrawJointIcon(prevX, prevY);
		}
	}

}

void DrawMiniMap(int x, int y, int showX, int showY){
	int prevX, prevY;
	int i;

	//격자
	SetColorRGB(60, 60, 60);
	for(i = 19; i < MINIMAP_WIDTH; i = i + 19){
		DrawVLine(x + i, y, y + MINIMAP_HEIGHT);
	}
	for(i = 13; i < MINIMAP_HEIGHT; i = i + 13){
		DrawHLine(x, x + MINIMAP_WIDTH, y + i);
	}
	
	//축소 노선
	for(i = 0; i < METRO_STATION_SIZE; i++){
		if(metroStation[i].option == STATION_NONE) continue;
		if(GetLineIndex(metroStation[i].id) == 0){
			prevX = metroStation[i].x / STRETCH_MINIMAP_SIZE + x;
			prevY = metroStation[i].y / STRETCH_MINIMAP_SIZE + y;
			SetColor(DataLineColor[GetLineNumber(metroStation[i].id)]);
		}
		DrawLine(prevX, prevY, metroStation[i].x / STRETCH_MINIMAP_SIZE + x, metroStation[i].y / STRETCH_MINIMAP_SIZE + y);
		//DrawRect(prevX, prevY, metroStation[i].x / STRETCH_MINIMAP_SIZE + x, metroStation[i].y / STRETCH_MINIMAP_SIZE + y);
		prevX = metroStation[i].x / STRETCH_MINIMAP_SIZE + x;
		prevY = metroStation[i].y / STRETCH_MINIMAP_SIZE + y;
	}
	// + swWidth / 2 + SLECTED_AREA_WIDTH

	//미니맵 테두리
	SetColor(S_DGRAY);
	DrawRect(x, y, x + MINIMAP_WIDTH, y + MINIMAP_HEIGHT);

	//미니맵 배경
	SetColor(S_BLACK);
	FillRectEx(x, y, x + MINIMAP_WIDTH, y + MINIMAP_HEIGHT, 2);
}

void DrawMiniSelector(int x, int y){
	//작은 선택자
	DrawRect(x - SLECTED_MINI_SELECTOR_WIDTH,
			 y - SLECTED_MINI_SELECTOR_HEIGHT,
			 x + SLECTED_MINI_SELECTOR_WIDTH,
			 y + SLECTED_MINI_SELECTOR_HEIGHT
			);
}

//
//void DrawSelectedArea(int width, int height) {SetColor(S_RED);DrawRect(swWidth / 2 - width, swHeight / 2 - height, swWidth / 2 + width, swHeight / 2 + height);}
void DrawStationIcon(int x, int y) {FillRect(x - 6, y - 6, x + 5, y + 5);CopyImage(x - 6, y - 6, imgStationShadow);}
void DrawStationIcon2(int x, int y) {CopyImage(x - 6, y - 6, imgStationPoint);}
void DrawJointIcon(int x, int y) {CopyImage(x - 6, y - 6, imgStationJoint);}
void DrawStationLine(int x1, int y1, int x2, int y2) {DrawLine(x1, y1, x2, y2);DrawLine(x1, y1, x2, y2);DrawLine(x1-1, y1, x2-1, y2);DrawLine(x1+1, y1, x2+1, y2);DrawLine(x1, y1-1, x2, y2-1);DrawLine(x1, y1+1, x2, y2+1);}

//
void DrawCurrentStation(){
	CopyImage(swWidth / 2 - 7, swHeight / 2 - 7, imgCurrentStation[frame % 4]);
}