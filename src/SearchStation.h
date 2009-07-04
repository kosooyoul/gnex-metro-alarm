#define NULL	-1
#define FAILURE 0
#define SUCCESS	1
#define FALSE 	0
#define TRUE	1

#define SAVE_FOUND_JOINT_SIZE	200
#define FOUND_JOINT_SIZE		100
#define RESULT_PATH_SIZE		10

//검색 옵션
#define FIND_STATION_TIME		0
#define FIND_STATION_COUNT		1
int findOption = FIND_STATION_TIME;

/* G1+G2.검색 교차점 */
struct FoundJoint{
	int id;
	int time;
	int prevId;
	int jointIndex;
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
void AddSaveJoint(int id, int time, int prevId, int jointIndex){
	saveJointList[saveJointListSize].id = id;
	saveJointList[saveJointListSize].time = time;
	saveJointList[saveJointListSize].prevId = prevId;
	saveJointList[saveJointListSize].jointIndex = jointIndex;
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
		else if(saveJointList[i].prevId == id) return i;
	}
	return NULL;
}

/* G2.검색할 교차점 */
//저장(foundJoint), 교차점이 중복 된 경로는 소요시간 짧은 것으로 저장, 이미 검색 완료된 교차점이 있으면 추가 안함
int AddFoundJoint(int id, int time, int prevId, int jointIndex){
	int duplicatedFoundJointIndex = FindFoundJointById(id);
	if(FindSaveJointById(id) != NULL) return FAILURE;
	if(duplicatedFoundJointIndex == NULL){
		foundJoint[foundJointSize].id = id;
		foundJoint[foundJointSize].time = time;
		foundJoint[foundJointSize].prevId = prevId;
		foundJoint[foundJointSize].jointIndex = jointIndex;
		foundJointSize++;
		return SUCCESS;	//추가성공
	}else{
		if(foundJoint[duplicatedFoundJointIndex].time > time){
			foundJoint[duplicatedFoundJointIndex].id = id;
			foundJoint[duplicatedFoundJointIndex].time = time;
			foundJoint[duplicatedFoundJointIndex].prevId = prevId;
			foundJoint[duplicatedFoundJointIndex].jointIndex = jointIndex;
		}
		return SUCCESS;	//수정(추가)성공
	}
	return FAILURE;	//추가실패
}

//소요 시간에 따라 정렬, 내림차순
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
		else if(foundJoint[i].prevId == id) return i;
		if(metroJoint[foundJoint[i].jointIndex].id1 == id) return i;
		else if(metroJoint[foundJoint[i].jointIndex].id2 == id) return i;
		else if(metroJoint[foundJoint[i].jointIndex].id3 == id) return i;
		else if(metroJoint[foundJoint[i].jointIndex].id4 == id) return i;
	}
	return NULL;
}

//앞 교차점 삭제(정렬 후, 검색, 그리고 삭제)
void _DelFrontFoundJoint(){
	int i;
	foundJointSize--;
	for(i = 0; i < foundJointSize; i++){
		foundJoint[i].id = foundJoint[i + 1].id;
		foundJoint[i].time = foundJoint[i + 1].time;
		foundJoint[i].prevId = foundJoint[i + 1].prevId;
		foundJoint[i].jointIndex = foundJoint[i + 1].jointIndex;
	}
}

//마지막 교차점 삭제(정렬 후, 검색, 그리고 삭제)
void DelLastFoundJoint(){
	foundJointSize--;
}

//앞부분 교차점 아이디 가져옴
int _GetFrontFoundJointId(){
	if(foundJointSize > 0){
		return foundJoint[0].id;
	}
	return NULL;
}

//검색 대기 마지막 교차점 아이디 가져옴
int GetLastFoundJointId(){
	if(foundJointSize > 0){
		return foundJoint[foundJointSize - 1].id;
	}
	return NULL;
}

//앞부분 교차점의 인덱스를 가져옴
int _GetFrontFoundJointIndex(){
	if(foundJointSize > 0){
		return foundJoint[0].jointIndex;
	}
	return NULL;
}

//검색 대기 마지막 교차점의 인덱스를 가져옴
int GetLastFoundJointIndex(){
	if(foundJointSize > 0){
		return foundJoint[foundJointSize - 1].jointIndex;
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
	int prevJointId = endStation;		//이전 교차점 역(초기값 = 목적지 역, 검색 결과 역순 탐색용)
	int foundCount = 0;
	int startJoint = GetJointIndex(startStation);
	int endJoint = GetJointIndex(endStation);
	int i;
	int ret;

	/* 1.초기화 */
	InitJointList();
	InitFoundJoint();
	InitResultPath();
	
	if(startJoint != NULL){
		if(startJoint == endJoint) return FAILURE;
		ret = AddFoundJoint(startStation, 0, NULL, startJoint);
		foundCount += FindJoint(0, metroJoint[_GetFrontFoundJointIndex()].id1, endStation);
		foundCount += FindJoint(0, metroJoint[_GetFrontFoundJointIndex()].id2, endStation);
		foundCount += FindJoint(0, metroJoint[_GetFrontFoundJointIndex()].id3, endStation);
		foundCount += FindJoint(0, metroJoint[_GetFrontFoundJointIndex()].id4, endStation);
	}else{											//자신이 교차점이 아니면 수행
		ret = AddFoundJoint(startStation, 0, NULL, 0);		//자기자신이 최초 기점, 4번째 인자, 자신이 교차점이라면 1이상의 값
		foundCount += FindJoint(0, startStation, endStation);
	}
	
	if(foundCount > 0){								//다음 교차점이 있으면 자신을 검색완료에 추가
		_CopyFrontFoundJointToSaveJoint();
	}_DelFrontFoundJoint();
	SortFoundJointByTime();							//소요시간으로 정렬

	/* 2.경로 검색 과정, 교차점으로 검색 */
	while(_GetFrontFoundJointId() != endStation){	//마지막 부분이 목적지라는 것은 더 이상 짧은게 없다는 것
		if(endJoint != NULL){
			if(_GetFrontFoundJointId() == metroJoint[endJoint].id1
			|| _GetFrontFoundJointId() == metroJoint[endJoint].id2
			|| _GetFrontFoundJointId() == metroJoint[endJoint].id3
			|| _GetFrontFoundJointId() == metroJoint[endJoint].id4){
				break;
			}
		}

		foundCount = 0;									//찾은 갯수 0으로 초기화

		if(_GetFrontFoundJointId() == NULL){			//앞부분이 없다는건 못찾았고, 검색이 끝났다는 것
			return FAILURE;									//검색을 마침
		}else{											//끝나지 않았다면 또 검색
														//검색하려는 역이 없음, 또는 환승전의 역이면 검색 안함
			if(metroJoint[_GetFrontFoundJointIndex()].id1 != NULL && metroJoint[_GetFrontFoundJointIndex()].id1 != foundJoint[0].id){
				foundCount += FindJoint(0, metroJoint[_GetFrontFoundJointIndex()].id1, endStation);
			}if(metroJoint[_GetFrontFoundJointIndex()].id2 != NULL && metroJoint[_GetFrontFoundJointIndex()].id2 != foundJoint[0].id){
				foundCount += FindJoint(0, metroJoint[_GetFrontFoundJointIndex()].id2, endStation);
			}if(metroJoint[_GetFrontFoundJointIndex()].id3 != NULL && metroJoint[_GetFrontFoundJointIndex()].id3 != foundJoint[0].id){
				foundCount += FindJoint(0, metroJoint[_GetFrontFoundJointIndex()].id3, endStation);
			}if(metroJoint[_GetFrontFoundJointIndex()].id4 != NULL && metroJoint[_GetFrontFoundJointIndex()].id4 != foundJoint[0].id){
				foundCount += FindJoint(0, metroJoint[_GetFrontFoundJointIndex()].id4, endStation);
			}
			
			//if(//if(stationId == 2300 || stationId == 2306) stationId = 1432;

			if(foundCount > 0){								//다음 교차점이 있으면 자신을 검색완료에 추가
				_CopyFrontFoundJointToSaveJoint();
			}_DelFrontFoundJoint();
			SortFoundJointByTime();							//소요시간순으로 정렬
		}
	}
	_CopyFrontFoundJointToSaveJoint();				//반복이 끝난 것은 앞부분이 목적지라는 뜻이므로, 앞부분을 검색완료로 이동

	/* 3.검색 결과 처리 과정 */
	//목적지가 교차점인 경우
	if(endJoint != NULL){
		if(saveJointList[saveJointListSize - 1].id == metroJoint[endJoint].id1
		|| saveJointList[saveJointListSize - 1].id == metroJoint[endJoint].id2
		|| saveJointList[saveJointListSize - 1].id == metroJoint[endJoint].id3
		|| saveJointList[saveJointListSize - 1].id == metroJoint[endJoint].id4){
			AddResultPath(saveJointListSize - 1);
			prevJointId = saveJointList[saveJointListSize - 1].prevId;
			saveJointListSize--;
		}
	}

	//결과 재검색
	for(i = saveJointListSize - 1; i >= 0; i--){	//마지막부터 최종 교차점 탐색
		if(saveJointList[i].id == prevJointId){			//탐색 중인 역이 이전 목적지인지
			AddResultPath(i);								//목적지 이전 교차점역이므로 결과에 저장
			prevJointId = saveJointList[i].prevId;			//그리고 이전 교차점역의 이전 교차점을 받아옴
			if(saveJointList[i].id == startStation) break;	//시작점과 같다는 것은 탐색이 끝났다는 것
		}
	}
	ReverseResultPath();							//시작 역부터 볼수 있도록 결과를 반전

	/* 4.검색 완료 */
	return SUCCESS;									//검색 결과 반환, 찾았으니까 내려온 것, SUCCESS 반환
}

/*
	//(3.)에서 아이디를 저장하지 않고 교차점 인덱스를 저장해야함
	1.초기 100번으로 검색
	2.같은 라인의 103이 검색됨
	3.103번이 저장됨<<<<<<<<<<<<<<<<<<<<<, 103번 뿐만 아니라 교차점 인덱스도 저장
	4.두번째 103번으로 검색<<<<<<<<<<<<<<, 저장된 정보중 103번 외의 아이디로 검색
	5.같은 라인의 103이 검색
	6.자신이므로 저장안함
	7.검색대기 목록은 없음
	8.종료
*/
int FindJoint(int currentStationIndex, int currentStation, int endStation){
	int currentLine = GetLineNumber(currentStation);
	int endLine = GetLineNumber(endStation);
	int foundJointCount = 0;
	int i;

	if(currentStation == NULL) return 0;								//역이 없는 경우 끝
	
	/* <1> */
	if(currentLine == endLine){		//같은 라인에 목적지가 있으면, 목적지를 저장
		if(AddFoundJoint(
			//다음 역(목적지)
			endStation,
			//현재 역까지 시간 + 현재역과 다음 역 사이의 시간
			foundJoint[currentStationIndex].time + GetStationTime(currentStation, endStation),
			//이전 역(환승이전 역)
			foundJoint[currentStationIndex].id,
			//교차점의 인덱스 없음
			0
		) == SUCCESS){
			foundJointCount++;
		}
	}
	
	/* <2> */
	//같은 라인의 교차점 검색, Joint 갯수 만큼 반복
	for(i = 0; i < METRO_JOINT_SIZE; i++){
		//교차점이 목적지인지 검사
		if(metroJoint[i].id1 == endStation || metroJoint[i].id2 == endStation || metroJoint[i].id3 == endStation || metroJoint[i].id4 == endStation){
			if(GetLineNumber(metroJoint[i].id1) == currentLine){
				if(AddFoundJoint(metroJoint[i].id1, foundJoint[currentStationIndex].time + GetStationTime(currentStation, metroJoint[i].id1), foundJoint[currentStationIndex].id, 0) == SUCCESS) foundJointCount++;
			}else if(GetLineNumber(metroJoint[i].id2) == currentLine){
				if(AddFoundJoint(metroJoint[i].id2, foundJoint[currentStationIndex].time + GetStationTime(currentStation, metroJoint[i].id2), foundJoint[currentStationIndex].id, 0) == SUCCESS) foundJointCount++;
			}else if(GetLineNumber(metroJoint[i].id3) == currentLine){
				if(AddFoundJoint(metroJoint[i].id3, foundJoint[currentStationIndex].time + GetStationTime(currentStation, metroJoint[i].id3), foundJoint[currentStationIndex].id, 0) == SUCCESS) foundJointCount++;
			}else if(GetLineNumber(metroJoint[i].id4) == currentLine){
				if(AddFoundJoint(metroJoint[i].id4, foundJoint[currentStationIndex].time + GetStationTime(currentStation, metroJoint[i].id4), foundJoint[currentStationIndex].id, 0) == SUCCESS) foundJointCount++;
			}			
		}
		//같은 라인의 교차점인지 검사
		if(GetLineNumber(metroJoint[i].id1) == currentLine
		&& metroJoint[i].id1 != currentStation ){	//자신인 경우 안됨
			/* <3(1)> */
			if(AddFoundJoint(
				metroJoint[i].id1,																			//다음 역(목적지)
				foundJoint[currentStationIndex].time + GetStationTime(currentStation, metroJoint[i].id1),	//현재 역까지 시간 + 현재역과 다음 역 사이의 시간
				foundJoint[currentStationIndex].id,															//이전 역(환승이전 역)
				i																							//현재 교차점의 인덱스
			) == SUCCESS){
				foundJointCount++;	//찾았으므로 하나 증가
			}
		}else if(GetLineNumber(metroJoint[i].id2) == currentLine
		&& metroJoint[i].id2 != currentStation){
			/* <3(2)> */
			if(AddFoundJoint(
				metroJoint[i].id2,
				foundJoint[currentStationIndex].time + GetStationTime(currentStation, metroJoint[i].id2),
				foundJoint[currentStationIndex].id,
				i
			) == SUCCESS){
				foundJointCount++;
			}
		}else if(GetLineNumber(metroJoint[i].id3) == currentLine
		&& metroJoint[i].id3 != currentStation){
			/* <3(3)> */
			if(AddFoundJoint(
				metroJoint[i].id3,
				foundJoint[currentStationIndex].time + GetStationTime(currentStation, metroJoint[i].id3),
				foundJoint[currentStationIndex].id,
				i
			) == SUCCESS){
				foundJointCount++;
			}
		}else if(GetLineNumber(metroJoint[i].id4) == currentLine
		&& metroJoint[i].id4 != currentStation){
			/* <4(4)> */
			if(AddFoundJoint(
				metroJoint[i].id4,
				foundJoint[currentStationIndex].time + GetStationTime(currentStation, metroJoint[i].id4),
				foundJoint[currentStationIndex].id,
				i
			) == SUCCESS){
				foundJointCount++;
			}
		}
	}

	return foundJointCount;
}

//다음 역이 교차점인지, 교차점이면 인덱스를 반환, 아니면 NULL(-1)을 반환
int GetJointIndex(int station){
	int i;

	for(i = 0; i < METRO_JOINT_SIZE; i++){
		if(metroJoint[i].id1 == station){
			return i;
		}else if(metroJoint[i].id2 == station){
			return i;
		}else if(metroJoint[i].id3 == station){
			return i;
		}else if(metroJoint[i].id4 == station){
			return i;
		}
	}
	return NULL;
}

//두 역 사이의 시간을 구함(두 역은 같은 노선이여야 함)
int GetStationTime(int stationId1, int stationId2){
	int i;
	int totalTime = 0;
	int currentLine	= GetLineNumber(stationId1);

	//두 역 사이의 정거장 갯수를 구하고자하면..
	if(findOption == FIND_STATION_COUNT) return Abs(stationId1 - stationId2);

	if(GetLineNumber(stationId1) != GetLineNumber(stationId2)) return 10000;

	//검색 결과에 코드 추가, 이름이 같다면 필요없음 :: if(stationId == 2300 || stationId == 2306) stationId = 1432;
	if(currentLine == 23){	//예외 노선 처리 : 6호선 응암 - 330/2300(D응암) ~ 336/2306(D응암), 1432(응암)
		if(stationId1 < stationId2){
			for(i = 0; i < stationId2 - stationId1; i++){
				totalTime += metroStation[metroLine[currentLine].startIndex + GetLineIndex(stationId1) + i].time;
			}
		}else if(stationId2 < stationId1){
			//순환 노선이라고 치고 계산
			for(i = 0; i < 2306 - stationId1; i++){
				totalTime += metroStation[metroLine[currentLine].startIndex + GetLineIndex(stationId2) + i].time;
			}for(i = 0; i < stationId2 - 2300; i++){
				totalTime += metroStation[metroLine[currentLine].startIndex + GetLineIndex(stationId2) + i].time;
			}
		}

	}else{
	
		if(stationId1 < stationId2){
			for(i = 0; i < stationId2 - stationId1; i++){
				totalTime += metroStation[metroLine[currentLine].startIndex + GetLineIndex(stationId1) + i].time;
			}
		}else if(stationId2 < stationId1){
			for(i = 0; i < stationId1 - stationId2; i++){
				totalTime += metroStation[metroLine[currentLine].startIndex + GetLineIndex(stationId2) + i].time;
			}
		}
		//임시 아이디로 계산
		//return Abs(stationId1 - stationId2);
	}

	return totalTime;
}

//앞부분 데이터를 검색 완료 데이터에 추가
void _CopyFrontFoundJointToSaveJoint(){
	AddSaveJoint(foundJoint[0].id, foundJoint[0].time, foundJoint[0].prevId, foundJoint[0].jointIndex);
}

//검색 대기목록 마지막번째 데이터를 검색 완료 데이터에 추가
void CopyLastFoundJointToSaveJoint(){
	AddSaveJoint(foundJoint[foundJointSize - 1].id, foundJoint[foundJointSize - 1].time, foundJoint[foundJointSize - 1].prevId, foundJoint[foundJointSize - 1].jointIndex);
}

