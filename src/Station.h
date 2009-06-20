#define NULL	-1

struct Station{
	int name;
	int cost;
}StationA[10], StationB[10], StationC[10];

struct StationNode{
	int stationIdA;
	int stationIdB;
	int cost;
}NodeA[9], NodeB[9], NodeC[9];

int GetNodeStationA(int id){
	switch(GetLineNumber(id)){
		case 1: return NodeA[GetLineIndex(id)].stationIdA;
		case 2: return NodeB[GetLineIndex(id)].stationIdA;
		case 3: return NodeC[GetLineIndex(id)].stationIdA;
		default:return NULL;
	}
}

int GetNodeStationB(int id){
	switch(GetLineNumber(id)){
		case 1: return NodeA[GetLineIndex(id)].stationIdB;
		case 2: return NodeB[GetLineIndex(id)].stationIdB;
		case 3: return NodeC[GetLineIndex(id)].stationIdB;
		default:return NULL;
	}
}

int GetLineNumber(int id){
	return id / 100;
}

int GetLineIndex(int id){
	return id - GetLineNumber(id) * 100;
}

struct StationJoint{
	int stationIdA;
	int stationIdB;
	int stationIdC;
}Joint[10];

void InitJoin(int index, int stationIdA, int stationIdB, int stationIdC){
	Joint[index].stationIdA = stationIdA;
	Joint[index].stationIdB = stationIdB;
	Joint[index].stationIdC = stationIdC;
}

int GetJointStationId(int index, int station){
	if(index == NULL) return NULL;
	switch(station){
		case 0: return Joint[index].stationIdA;
		case 1: return Joint[index].stationIdB;
		case 2: return Joint[index].stationIdC;
		default:return NULL;
	}
}

const string stationName[] = {
	"NA100",
	"NA101",
	"NA102",
	"NA103",
	"NA104",
	"NA105",
	"NA106",
	"NA107",
	"NA108",
	"NA109",
	"NB200",
	"NB201",
	"NB202",
	"NB203",
	"NB204",
	"NB205",
	"NB206",
	"NB207",
	"NB208",
	"NB209",
	"NC300",
	"NC301",
	"NC302",
	"NC303",
	"NC304",
	"NC305",
	"NC306",
	"NC307",
	"NC308",
	"NC309"
};

void InitSubway(){
	int i;
	for(i = 0; i < 10; i++){
		StationA[i].name = stationName[i];
		NodeA[i].cost = 3;
		if(i < 9){
			NodeA[i].stationIdA = i;
			NodeA[i].stationIdB = i + 1;
		}
	}
	for(i = 0; i < 10; i++){
		StationB[i].name = stationName[i + 10];
		NodeB[i].cost = 3;
		if(i < 9){
			NodeB[i].stationIdA = i;
			NodeB[i].stationIdB = i + 1;
		}
	}
	for(i = 0; i < 10; i++){
		StationC[i].name = stationName[i + 20];
		NodeC[i].cost = 3;
		if(i < 9){
			NodeC[i].stationIdA = i;
			NodeC[i].stationIdB = i + 1;
		}
	}

	InitJoin(0, 106, 206, NULL);
	InitJoin(1, 108, 308, NULL);
	InitJoin(2, 203, 303, NULL);
	InitJoin(3, 208, 306, NULL);

}