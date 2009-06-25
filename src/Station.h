#define NULL	-1
#define METRO_STATION_SIZE	50	//MetroNode도 같이 사용
#define METRO_LINE_SIZE		10
#define METRO_JOINT_SIZE	10

struct MetroStation{
	int id;
	int name;
	int time;	//테스트를 위해(노드없이 계산)
}metroStation[METRO_STATION_SIZE];

struct MetroNode{
	int time;
}metroNode[METRO_STATION_SIZE];

struct MetroLine{
	int lineNumber;
	int name;
	int startIndex;
	int stationCount;
}metroLine[METRO_LINE_SIZE];

struct MetroJoint{
	int id1;
	int id2;
	int id3;
}metroJoint[METRO_JOINT_SIZE];

void InitMetroStation(int index, int id, int name){
	metroStation[index].id = id;
	metroStation[index].name = name;
}

void InitNode(int index, int time){
	metroNode[index].time = time;
}

void InitLine(int index, int lineNumber, int name, int startIndex, int stationCount){
	metroLine[index].lineNumber = lineNumber;
	metroLine[index].name = name;
	metroLine[index].startIndex = startIndex;
	metroLine[index].stationCount = stationCount;
}

void InitJoint(int index, int id1, int id2, int id3){
	metroJoint[index].id1 = id1;
	metroJoint[index].id2 = id2;
	metroJoint[index].id3 = id3;
}

/* G11.아이디 구분 */
int GetLineNumber(int id){
	return id / 100;
}

int GetLineIndex(int id){
	return id - GetLineNumber(id) * 100;
}

//라인번호와 노선의 역 인덱스로, 실제 배열의 인덱스 값을 가져옴
int GetMetroStation(int lineNumber, int stationIndex){
	return metroLine[lineNumber].startIndex + stationIndex;
}

//역 아이디로 실제 배열의 인덱스 값을 가져옴
int GetMetroStationById(int id){
	return metroLine[GetLineNumber(id)].startIndex + GetLineIndex(id);
}

/* G0.지하철 데이터 초기화 */
void InitMetro(){
	int i, j;

	/* test
	metroLine[0].lineNumber = 0;
	metroLine[0].name = 0;
	metroLine[0].startIndex = 0;
	metroLine[0].stationCount = 0;
	//*/

	//노선 설정
	InitLine(1, 1, 1,  0, 10);
	InitLine(2, 2, 2, 10, 10);
	InitLine(3, 3, 3, 20, 10);
	InitLine(4, 4, 4, 30, 10);

	//역 자동 설정
	for(j = 1; j < 5; j++){
		for(i = 0; i < metroLine[j].stationCount; i++){
			InitMetroStation(
				metroLine[j].startIndex + i,	//인덱스
				j * 100 + i,					//역 아이디
				metroLine[j].startIndex + i		//역 이름 인덱스
			);
			//metroStation[metroLine[j].startIndex + i].time = stationTime[metroLine[j].startIndex + i];
			//metroNode[metroLine[j].startIndex + i].time = stationTime[metroLine[j].startIndex + i];
		}
	}

	//교차점 설정
	InitJoint(0, NULL, NULL, NULL);
	InitJoint(1,  309,  402, NULL);
	InitJoint(2,  208,  307, NULL);
	InitJoint(3,  103,  203, NULL);
	//InitJoint(4,  308,  408, NULL);
	//InitJoint(5,  102,  407, NULL);
	
	

}
