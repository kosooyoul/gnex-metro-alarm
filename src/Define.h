#define NULL	-1
#define FALSE	0
#define TRUE	1

//지하철 구조체 갯수
#define METRO_STATION_SIZE	520
#define METRO_LINE_SIZE		24
#define METRO_JOINT_SIZE	66

//지하철 노선 그리기 관련
#define MINIMAP_B						2
#define MINIMAP_LEFT					swWidth/2 - 95
#define MINIMAP_TOP						swHeight/2 - 65
#define MINIMAP_WIDTH					190
#define MINIMAP_HEIGHT					130
#define DRAW_OUT_WIDTH					20
#define MAP_CENTER_X					swWidth / 10
#define MAP_CENTER_Y					swHeight / 10
#define SLECTED_MINI_SELECTOR_WIDTH		8	//SLECTED_AREA_WIDTH / (STRETCH_METRO_SIZE * 10);
#define SLECTED_MINI_SELECTOR_HEIGHT	8	//SLECTED_AREA_HEIGHT / (STRETCH_METRO_SIZE * 10);

int STRETCH_METRO_SIZE				= 2;

int DEFAULT_MIN_X					= -MAP_CENTER_X * 5;
int DEFAULT_MIN_Y					= -MAP_CENTER_Y * 5;
int DEFAULT_MAX_X					= (950) * (STRETCH_METRO_SIZE) + DEFAULT_MIN_X;
int DEFAULT_MAX_Y					= (650) * (STRETCH_METRO_SIZE) + DEFAULT_MIN_Y;
int STRETCH_MINIMAP_SIZE			= STRETCH_METRO_SIZE * 10 / MINIMAP_B;

int SLECTED_AREA_WIDTH				= 32 * STRETCH_METRO_SIZE;		//-> BX
int SLECTED_AREA_HEIGHT				= 32 * STRETCH_METRO_SIZE;		//-> BY
int STATION_NAME_WIDTH				= 6;		// = (A + 1) * 2

int metroShowMoveX = 0;
int metroShowMoveY = 0;
int metroShowX = (1250 / 3 + swWidth)* STRETCH_METRO_SIZE;
int metroShowY = (680 / 3 + swHeight)* STRETCH_METRO_SIZE;
int fontSize[3] = {2, 6, 20};

void ResetStretch(int zoom){
	
	int prevZoom = STRETCH_METRO_SIZE;
	int applyZoom;

	if(zoom < 1) applyZoom = STRETCH_METRO_SIZE + 1;
	else applyZoom = zoom;
	STRETCH_METRO_SIZE = applyZoom;
	if(STRETCH_METRO_SIZE > 3) STRETCH_METRO_SIZE = 1;

	DEFAULT_MIN_X 			= -MAP_CENTER_X * 5;
	DEFAULT_MIN_Y 			= -MAP_CENTER_Y * 5;
	DEFAULT_MAX_X 			= (950) * (STRETCH_METRO_SIZE) + DEFAULT_MIN_X;
	DEFAULT_MAX_Y 			= (650) * (STRETCH_METRO_SIZE) + DEFAULT_MIN_Y;
	STRETCH_MINIMAP_SIZE	= STRETCH_METRO_SIZE * 10 / MINIMAP_B;

	SLECTED_AREA_WIDTH		= 32 * STRETCH_METRO_SIZE;
	SLECTED_AREA_HEIGHT		= 32 * STRETCH_METRO_SIZE;
	STATION_NAME_WIDTH		= fontSize[STRETCH_METRO_SIZE - 1];

	//reset current position
	metroShowX = (metroShowX + swWidth / 2) * STRETCH_METRO_SIZE / prevZoom - swWidth / 2;
	metroShowY = (metroShowY + swHeight / 2) * STRETCH_METRO_SIZE / prevZoom - swHeight / 2;

	ResetStationPosition();

}



#define STATION_NAME_LEFT		4
#define STATION_NAME_TOP		4
#define DEFAULT_MOVEMENT		20

//지하철 선택 관련
#define MAX_SELECTED_STATION_COUNT		10		//선택된 역의 최대 갯수
int selectedStartStation = FALSE;
int selectedEndStation = FALSE;
void InitSelectedStation(){selectedStartStation = FALSE;selectedEndStation = FALSE;}
int selectedMenuIndex = 0;

//역 추적 관련
int trackingCurrentStationIndex = NULL;
int trackingPrevStationIndex = NULL;
int currentMobileCenterId = NULL;
	


//프로그램 모드
#define MODE_MAIN			0
#define MODE_SELECT_STATION	1
#define MODE_PATH			2
#define MODE_TRACKING		3
int mode = MODE_MAIN;


int frame = 0;
void PlayFrame(){if(frame < 24000) frame++;else frame = 0;}