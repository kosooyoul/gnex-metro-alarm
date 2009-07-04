#define STATION_NORMAL		0
#define STATION_DUPLICATED	1
#define STATION_NODE		2
#define STATION_CLOSED		3
#define STATION_NONE		4

/* G0.지하철 데이터 구조 */
struct MetroStation{
	int id;
	int name;
	int time;	//테스트를 위해(노드없이 계산)
	int x;		//화면상의 X좌표
	int y;		//화면상의 Y좌표
	int option;	//0:일반역, 1:중복된역, 2:노드, 3:미개통역
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
	int id4;
}metroJoint[METRO_JOINT_SIZE];

void InitMetroStation(int index, int id, int name, int time, int x, int y){
	metroStation[index].id = id;
	metroStation[index].name = name;
	metroStation[index].time = time;
	metroStation[index].x = x;
	metroStation[index].y = y;
}

void SetStationOption(int index, int option){
	metroStation[index].option = option;
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

void InitJoint(int index, int id1, int id2, int id3, int id4){
	metroJoint[index].id1 = id1;
	metroJoint[index].id2 = id2;
	metroJoint[index].id3 = id3;
	metroJoint[index].id4 = id4;
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

	//노선 설정
	for(i = 0; i < METRO_LINE_SIZE; i++){
		InitLine(i, i, i,  DataLineStartId[i], Abs(DataLineEndId[i] - DataLineStartId[i]) + 1);
	}

	//역 설정
	for(j = 1; j < METRO_LINE_SIZE; j++){
		for(i = 0; i < metroLine[j].stationCount; i++){
			InitMetroStation(
				metroLine[j].startIndex + i,	//인덱스
				j * 100 + i,					//역 아이디
				metroLine[j].startIndex + i,	//역 이름 인덱스
				DataStationTime[metroLine[j].startIndex + i],
				DataStationX[metroLine[j].startIndex + i] * STRETCH_METRO_SIZE,
				DataStationY[metroLine[j].startIndex + i] * STRETCH_METRO_SIZE
			);
			if(GetChar(DataStationName[metroLine[j].startIndex + i], 0) == '-'){
				SetStationOption(metroLine[j].startIndex + i, STATION_CLOSED);
			}else if(GetChar(DataStationName[metroLine[j].startIndex + i], 0) == 'N'){
				SetStationOption(metroLine[j].startIndex + i, STATION_NODE);
			}else if(GetChar(DataStationName[metroLine[j].startIndex + i], 0) == 'D'){
				SetStationOption(metroLine[j].startIndex + i, STATION_DUPLICATED);
			}else if(GetChar(DataStationName[metroLine[j].startIndex + i], 0) == 'X'){
				SetStationOption(metroLine[j].startIndex + i, STATION_NONE);
			}

		}
	}

	//예외 옵션 설정
	//1호선 : 구로
	SetStationOption( 21, STATION_DUPLICATED);
	SetStationOption( 63, STATION_DUPLICATED);
	//1호선 : 광명
	SetStationOption( 67, STATION_DUPLICATED);
	SetStationOption(518, STATION_DUPLICATED);
	//2호선 : 신도림
	SetStationOption(109, STATION_DUPLICATED);
	SetStationOption(153, STATION_DUPLICATED);
	//4호선 : 강동
	SetStationOption(235, STATION_DUPLICATED);
	SetStationOption(241, STATION_DUPLICATED);
	//6호선 : 응암
	SetStationOption(330, STATION_DUPLICATED);
	SetStationOption(336, STATION_DUPLICATED);
	//SetStationOption(336, STATION_DUPLICATED);

	//교차점 설정
	InitJoint(0, NULL, NULL, NULL, NULL);
	InitJoint(1, 109, 1911, NULL, NULL);
	InitJoint(2, 120, 200, 300, NULL);
	InitJoint(3, 201, 504, 700, 823);
	InitJoint(4, 500, 1008, NULL, NULL);
	InitJoint(5, 301, 1537, NULL, NULL);
	InitJoint(6, 303, 400, 2200, NULL);
	InitJoint(7, 1804, 1900, NULL, NULL);
	InitJoint(8, 1002, 1805, 2101, NULL);
	InitJoint(9, 709, 1021, NULL, NULL);
	InitJoint(10, 405, 1313, NULL, NULL);
	InitJoint(11, 934, 1702, NULL, NULL);
	InitJoint(12, 815, 1323, NULL, NULL);
	InitJoint(13, 822, 1535, NULL, NULL);
	InitJoint(14, 116, 1541, NULL, NULL);
	InitJoint(15, 702, 1013, NULL, NULL);
	InitJoint(16, 704, 1425, NULL, NULL);
	InitJoint(17, 1019, 1421, NULL, NULL);
	InitJoint(18, 715, 1412, NULL, NULL);
	InitJoint(19, 703, 2112, NULL, NULL);
	InitJoint(20, 1432, 2300, 2306, NULL);
	InitJoint(20, 1432, 2300, NULL, NULL);
	InitJoint(21, 911, 2304, NULL, NULL);
	InitJoint(22, 912, 2302, NULL, NULL);
	InitJoint(23, 211, 919, 1024, NULL);
	InitJoint(24, 209, 710, NULL, NULL);
	InitJoint(25, 712, 920, NULL, NULL);
	InitJoint(26, 713, 1025, NULL, NULL);
	InitJoint(27, 714, 1027, 1334, NULL);
	InitJoint(28, 1328, 1419, NULL, NULL);
	InitJoint(29, 208, 1330, NULL, NULL);
	InitJoint(30, 1326, 2002, NULL, NULL);
	InitJoint(31, 206, 2000, NULL, NULL);
	InitJoint(32, 205, 2116, NULL, NULL);
	InitJoint(33, 203, 1015, NULL, NULL);
	InitJoint(34, 213, 1335, NULL, NULL);
	InitJoint(35, 214, 1411, NULL, NULL);
	InitJoint(36, 215, 600, NULL, NULL);
	InitJoint(37, 218, 2011, NULL, NULL);
	InitJoint(38, 225, 1344, NULL, NULL);
	InitJoint(39, 228, 1501, NULL, NULL);
	InitJoint(40, 1345, 1504, NULL, NULL);
	InitJoint(41, 221, 1403, NULL, NULL);
	InitJoint(42, 1402, 1508, NULL, NULL);
	InitJoint(43, 1039, 1601, NULL, NULL);
	InitJoint(44, 1040, 1100, 1200, NULL);
	InitJoint(45, 939, 1706, NULL, NULL);
	InitJoint(46, 1610, 1707, NULL, NULL);
	InitJoint(47, 1616, 1710, NULL, NULL);
	InitJoint(48, 809, 1700, NULL, NULL);
	InitJoint(49, 805, 1604, NULL, NULL);
	InitJoint(50, 807, 2129, NULL, NULL);
	InitJoint(51, 929, 1525, 2122, NULL);
	InitJoint(52, 1325, 2119, NULL, NULL);
	InitJoint(53, 604, 720, 800, NULL);
	InitJoint(54, 801, 1518, NULL, NULL);
	InitJoint(55, 812, 930, NULL, NULL);
	InitJoint(56, 1036, 1516, NULL, NULL);
	InitJoint(57, 1324, 1527, NULL, NULL);
	InitJoint(58, 925, 2005, NULL, NULL);
	InitJoint(59, 923, 1414, NULL, NULL);
	InitJoint(60, 921, 1333, NULL, NULL);
	InitJoint(61, 1028, 1413, NULL, NULL);
	InitJoint(62, 717, 1031, 2009, NULL);
	InitJoint(63, 1202, 2135, NULL, NULL);
	InitJoint(64, 1605, 2132, NULL, NULL);
	InitJoint(65, 1016, 2114, NULL, NULL);

}

void ResetStationPosition(){
	int i, j;

	for(j = 1; j < METRO_LINE_SIZE; j++){
		for(i = 0; i < metroLine[j].stationCount; i++){
			InitMetroStation(
				metroLine[j].startIndex + i,	//인덱스
				j * 100 + i,					//역 아이디
				metroLine[j].startIndex + i,	//역 이름 인덱스
				DataStationTime[metroLine[j].startIndex + i],
				DataStationX[metroLine[j].startIndex + i] * STRETCH_METRO_SIZE,
				DataStationY[metroLine[j].startIndex + i] * STRETCH_METRO_SIZE
			);
		}
	}

}

/* G.MAIN 지하철 탐색 */
int SelectedStationCount = 0;						//검색된 주변 역 갯수
int SelectedStation[MAX_SELECTED_STATION_COUNT];	//검색된 주변 역 목록

void InitSelectedStationList(){
	SelectedStationCount = 0;
}

void InsertSelectedStation(int index){
	if(SelectedStationCount < MAX_SELECTED_STATION_COUNT){
		SelectedStation[SelectedStationCount] = index;
		SelectedStationCount++;
	}
}

int FindSelectedStation(int x, int y){
	int areaX1 = x +  swWidth / 2 - SLECTED_AREA_WIDTH;
	int areaY1 = y + swHeight / 2 - SLECTED_AREA_HEIGHT;
	int areaX2 = x +  swWidth / 2 + SLECTED_AREA_WIDTH;
	int areaY2 = y + swHeight / 2 + SLECTED_AREA_HEIGHT;
	int i;

	InitSelectedStationList();

	for(i = 0; i < METRO_STATION_SIZE; i++){
		if(metroStation[i].x > areaX1 && metroStation[i].x < areaX2
		&& metroStation[i].y > areaY1 && metroStation[i].y < areaY2){
			if(metroStation[i].option == STATION_NORMAL) InsertSelectedStation(i);
		}
	}

	return SelectedStationCount;
}

