#define NULL	-1
#define FAILURE 0
#define SUCCESS	1
#define FALSE 	0
#define TRUE	1

#define SAVE_FOUND_JOINT_SIZE	20
#define FOUND_JOINT_SIZE		30
#define RESULT_PATH_SIZE		10

/* G1+G2.검색 교차점 */
struct FoundJoint{
	int id;
	int time;
	int prevId;
};

/* G1.검색 완료 교차점 */
struct FoundJoint saveJointList[SAVE_FOUND_JOINT_SIZE];	//검색대기 데이터
int saveJointListSize = 0;								//크기

/* G2.검색할 교차점 */
struct FoundJoint foundJoint[FOUND_JOINT_SIZE];			//검색완료 데이터
int foundJointSize = 0;									//크기

/* G3.검색 교차점 결과 */
int resultPath[RESULT_PATH_SIZE];						//결과 인덱스 -> saveJointList[resultPath[i]]
int resultPathSize = 0;									//크기

/* G1.검색 완료 교차점 */
//저장(saveJointList)
void AddSaveJoint(int id, int time, int prevId){
	saveJointList[saveJointListSize].id = id;
	saveJointList[saveJointListSize].time = time;
	saveJointList[saveJointListSize].prevId = prevId;
	saveJointListSize++;
}

//초기화
void InitJointList(){
	saveJointListSize = 0;
}

//중복 교차점 찾음
int FindSaveJointById(int id){
	int i;
	for(i = 0; i < saveJointListSize; i++){
		if(saveJointList[i].id == id) return i;
	}
	return NULL;
}

/* G2.검색할 교차점 */
//저장(foundJoint), 교차점이 중복 된 경로는 소요시간 짧은 것으로 저장, 이미 검색 완료된 교차점이 있으면 추가 안함
void AddFoundJoint(int id, int time, int prevId){
	int duplicatedFoundJointIndex = FindFoundJointById(id);
	if(FindSaveJointById(id) == NULL) return;
	if(duplicatedFoundJointIndex == NULL){
		foundJoint[foundJointSize].id = id;
		foundJoint[foundJointSize].time = time;
		foundJoint[foundJointSize].prevId = prevId;
		foundJointSize++;
	}else{
		if(foundJoint[duplicatedFoundJointIndex].time > time){
			foundJoint[duplicatedFoundJointIndex].id = id;
			foundJoint[duplicatedFoundJointIndex].time = time;
			foundJoint[duplicatedFoundJointIndex].prevId = prevId;
		}
	}
}

//소요 시간에 따라 정렬
void SortFoundJointByTime(){
	Sort(foundJointSize, FOUNDJOINT_ORDER_BY_TIME);
}

//초기화
void InitFoundJoint(){
	foundJointSize = 0;
}

//중복 교차점 찾음
int FindFoundJointById(int id){
	int i;
	for(i = 0; i < foundJointSize; i++){
		if(foundJoint[i].id == id) return i;
	}
	return NULL;
}

//앞 교차점 삭제(정렬 후, 검색, 그리고 삭제)
void DelFrontFoundJoint(){
	int i;
	foundJointSize--;
	for(i = 0; i < foundJointSize; i++){
		foundJoint[i].id = foundJoint[i + 1].id;
		foundJoint[i].time = foundJoint[i + 1].time;
		foundJoint[i].prevId = foundJoint[i + 1].prevId;
	}
}

int GetFrontFoundJointId(){
	if(foundJointSize > 0){
		return foundJoint[0].id;
	}
	return NULL;
}

/* G3.검색 결과 */
//초기화
void InitResultPath(){
	resultPathSize = 0;
}

//결과 추가
void AddResultPath(int saveJointListIndex){
	resultPath[resultPathSize] = saveJointListIndex;
	resultPathSize++;
}

//역순으로
void ReverseResultPath(){
	int loopCount = resultPathSize / 2;
	int temp;
	int i;
	for(i = 0; i < loopCount; i++){
		//Swap(data[i], data[size - 1 - i]);
		temp = resultPath[i];
		resultPath[i] = resultPath[resultPathSize - 1 - i];
		resultPath[resultPathSize - 1 - i] = temp;
	}
}


/* G4.경로 검색 */
//경로 탐색
int FindPath(int startStation, int endStation){
	int prevJointId = endStation;		//이전 교차점 역(초기값 = 목적지 역)
	int result = FAILURE;
	int i;

	/* 초기화 */
	InitJointList();
	InitFoundJoint();
	InitResultPath();

	/* 경로 검색 과정 */
	//미구현 함수 완성시 함수명 앞 '_' 제거
	//미구현 함수 : FindJoint(currentStation, endStation)
	result = _FindJoint(startStation, endStation);
													//자신을 제외하고, 같은 노선의 교점을 찾아,
													//검색 할 교차점에 시간과 역아이디와 현재 검색한 아이디저장, 시간은 현재 검색 역의 시간 + 차이시간
													//만약 목적지와 같은 노선이면 목적지를 검색완료된 교차점에 위와 같은 식으로 저장, 그리고 찾았으니 SUCCESS를 반환
													//검색 결과가 없으면 자신은 지워지고(DelFrontFoundJoint)
													//검색 결과가 있으면 검색된 교차점에 저장(AddSaveJoint -> DelFrontFoundJoint)
													//못찾았으니 FAILURE를 반환

	while(result != SUCCESS){						//검색 결과가 성공할 때까지 반복
		SortFoundJointByTime();							//소요시간으로 정렬
		if(GetFrontFoundJointId() == NULL){				//앞부분이 없다는건 못찾았고, 검색이 끝났다는 것
			return FAILURE;									//검색을 마침
		}else{											//끝나지 않았다면 또 검색
			result = _FindJoint(GetFrontFoundJointId(), endStation);
		}//end if
	}//end while

	/* 검색 결과 처리 과정 */
	for(i = saveJointListSize - 1; i >= 0; i--){	//마지막부터 최종 교차점 탐색
		if(saveJointList[i].id == prevJointId){			//탐색 중인 역이 이전 목적지인지
			AddResultPath(i);								//목적지 이전 교차점역이므로 결과에 저장
			prevJointId = saveJointList[i].prevId;			//그리고 이전 교차점역의 이전 교차점을 받아옴
			if(saveJointList[i].id == startStation) break;	//시작점과 같다는 것은 탐색이 끝났다는 것
		}//end if
	}//end for
	ReverseResultPath();							//시작 역부터 볼수 있도록 결과를 반전

	//검색 결과 반환, 찾았으니까 내려온 것, SUCCESS 반환
	return SUCCESS;
}

int _FindJoint(int currentStation, int endStation){
	//자신을 제외하고, 같은 노선의 교점을 찾아,
	//검색 할 교차점에 시간과 역아이디와 현재 검색한 아이디저장, 시간은 현재 검색 역의 시간 + 차이시간
	//만약 목적지와 같은 노선이면 목적지를 검색완료된 교차점에 위와 같은 식으로 저장, 그리고 찾았으니 SUCCESS를 반환
	//검색 결과가 없으면 자신은 지워지고(DelFrontFoundJoint)
	//검색 결과가 있으면 검색된 교차점에 저장(AddSaveJoint -> DelFrontFoundJoint)
	//못찾았으니 FAILURE를 반환
	return FAILURE;
}

void CopyToSaveJoint(int index){

}




////////* 수정이 필요하거나 없애야 하는 함수들 */////////

void RouteStation(int stationStart, int stationEnd){
	stationStart = 200;
	stationEnd = 305;

	FindJoint(stationStart);
}

//int foundJoint[20];
int foundJointCount = 0;

void _InitFoundJoint(){
	MemSetInt(foundJoint, -1, 20);
}

int _AddFoundJoint(int jointIndex){
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
			_AddFoundJoint(i);
		}else if(currentLine == GetLineNumber(GetJointStationId(i, 1))){
			_AddFoundJoint(i);
		}else if(currentLine == GetLineNumber(GetJointStationId(i, 2))){
			_AddFoundJoint(i);
		}
	}
	return NULL;

}