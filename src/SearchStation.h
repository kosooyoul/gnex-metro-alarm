#define FAILURE 0
#define SUCCESS	1

void SearchStation(){}

void RouteStation(int stationStart, int stationEnd){
	stationStart = 200;
	stationEnd = 305;

	FindJoint(stationStart);
}

int foundJoint[20];
int foundJointCount = 0;

void InitFoundJoint(){
	MemSetInt(foundJoint, -1, 20);
}

int AddFoundJoint(int jointIndex){
	if(foundJointCount < 20){
		foundJoint[foundJointCount] = jointIndex;
		foundJointCount++;
		return SUCCESS;
	}
	return FAILURE;
}

int GetFoundJoint(int index){
	if(index < foundJointCount){
		return foundJoint[index];
	}
	return NULL;
}

int FindJoint(int currentId){
	int currentLine = GetLineNumber(currentId);
	int currentLineIndex = GetLineIndex(currentId);
	int i;
	for(i = 0; i < 10; i++){
		if(currentLine == GetLineNumber(GetJointStationId(i, 0))){
			AddFoundJoint(i);
		}else if(currentLine == GetLineNumber(GetJointStationId(i, 1))){
			AddFoundJoint(i);
		}else if(currentLine == GetLineNumber(GetJointStationId(i, 2))){
			AddFoundJoint(i);
		}
	}
	return NULL;

}