
void ActMetro(){
	switch(mode){
		case MODE_MAIN:
			MoveMetroMap();
			break;

		case MODE_SELECT_STATION:
			break;
		case MODE_PATH:
			break;

		case MODE_TRACKING:
			CheckMobileCenter();
			PlayFrame();
			break;
	}
}


void MoveMetroMap(){
	metroShowX += metroShowMoveX;
	metroShowY += metroShowMoveY;

	if(metroShowX < DEFAULT_MIN_X) metroShowX = DEFAULT_MIN_X;
	else if(metroShowX > DEFAULT_MAX_X) metroShowX = DEFAULT_MAX_X;

	if(metroShowY < DEFAULT_MIN_Y) metroShowY = DEFAULT_MIN_Y;
	else if(metroShowY > DEFAULT_MAX_Y) metroShowY = DEFAULT_MAX_Y;
}

void CheckMobileCenter(){
	int i;
	int mobileCenterInfo[5];

	GetLocInfo(mobileCenterInfo);
	//GetLocInfoTest(mobileCenterInfo);
	if(currentMobileCenterId == mobileCenterInfo[4]){
		if(currentMobileCenterId != 0){
			ShowCurrentStation(trackingCurrentStationIndex);
		}
		return;
	}

	currentMobileCenterId = mobileCenterInfo[4];

	for(i = 0; i < 85; i++){
		if(DataMobileCenterNumber[i] == mobileCenterInfo[4]){
			ShowCurrentStation(GetMetroStationById(DataMobileCenterNumberStationIndex[i]));

			if(trackingCurrentStationIndex == GetMetroStationById(DataMobileCenterNumberStationIndex[i])) break;

			trackingPrevStationIndex = trackingCurrentStationIndex;
			trackingCurrentStationIndex = GetMetroStationById(DataMobileCenterNumberStationIndex[i]);
			SaveROM();	//SAVE
		}
	}

}

//int g;void GetLocInfoTest(int *a){*(a + 4) = Rand(0,5000);}

void ShowCurrentStation(int StationIndex){
	metroShowX = metroStation[trackingCurrentStationIndex].x - swWidth / 2;
	metroShowY = metroStation[trackingCurrentStationIndex].y - swHeight / 2;
	savedBackground = FALSE;
	//enable "redraw station map"
	refresh_partial = TRUE;	
}