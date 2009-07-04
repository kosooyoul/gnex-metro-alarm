///////////////////////////////////////////////////////////////////////////
// Metro.mc - Auto Created by GNEX IDE
///////////////////////////////////////////////////////////////////////////

#ifdef _GVM
%{
	#DEFINE SCRIPTVER	2
	#DEFINE LCDCLASS	255
	#DEFINE IMAGETYPE	255
	#DEFINE AUDIOTYPE	255
	#DEFINE SCRIPTTYPE	1
	#DEFINE SCRIPTCPID	60000
	#DEFINE SCRIPTID	1
	#DEFINE SCRIPTNAME	"Metro GVM2X App"
	#DEFINE VALIDCOUNT	255
	#DEFINE VALIDTERM	255
%}
#else
%{
	#DEFINE PLAYERVER	4
	#DEFINE LCDCLASS	255
	#DEFINE IMAGETYPE	255
	#DEFINE AUDIOTYPE	255
	#DEFINE APPTYPE		1
	#DEFINE APPCPID		19732
	#DEFINE APPID		17171
	#DEFINE APPNAME		"Metro 17171"
	#DEFINE COMPTYPE	0
	#DEFINE AGENTTYPE	1
	#DEFINE VALIDCOUNT	255
	#DEFINE VALIDTERM	255
	#DEFINE DIRECTRUN	0
	#DEFINE APPVER		1
%}
#endif

#include <SScript.h>
#include "imgStation.sbm"

#include "Ahyane.h"
#include "Colors.h"
#include "Define.h"
#include "StationData.h"
#include "Station.h"
#include "SortStruct.h"
#include "SearchStation.h"

#include "ActMetro.h"
#include "DrawMetro.h"
#include "ControlMetro.h"


void TEST(){
	//SetFont(S_FONT_MEDIUM);
	//SetFontColor(S_RED, S_TRANSPARENT);
	//DrawInt(0, swHeight - 50, 15004);
	//DrawInt(0, swHeight - 60, runningType);

	//DrawInt(0, swHeight - 60, metroShowX);
	//DrawInt(0, swHeight - 50, metroShowY);
	
	//DrawInt(0, swHeight - 90, metroStation[5].x);
	//DrawInt(0, swHeight - 80, metroStation[5].y);
}

int runningType;
int refresh = TRUE;
int refresh_partial = TRUE;

void main(){
	runningType = swData2;
	if(runningType == 1) ChangeMode(MODE_TRACKING);

	InitMetro();

	LoadROM();

	SetTimer(50, 1);

	metroShowX = 1250;
	metroShowY = 680;

	ActMetro();
	DrawMetro();
	Flush();

	refresh = FALSE;
}

void EVENT_TIMEOUT(){
	if(refresh == TRUE){
		ActMetro();
		DrawMetro();
		//TEST();
		Flush();		
	}	
}

void EVENT_KEYPRESS(){
	if(swData == SWAP_KEY_RELEASE) refresh = FALSE;
	else refresh = TRUE;

	ControlMetro(swData);
}

#define	NV_SIZE				16		//세이브용 테스트
int NVROM[NV_SIZE];

void LoadROM(){
	GetUserNV(NVROM, NV_SIZE);

	if (NVROM[0] != 4096) { // 최초 실행이면...
		ArrayToVar(NVROM, 0, 16, S_OP_SET);
		NVROM[0] = 4096;
		NVROM[1] = selectedStartStation;		//출발역ID
		NVROM[2] = selectedEndStation;			//목적지ID
		NVROM[3] = trackingCurrentStationIndex;	//현재역인덱스

	}
	
	selectedStartStation = NVROM[1];
	selectedEndStation = NVROM[2];
	trackingCurrentStationIndex = NVROM[3];

	PutUserNV(NVROM, NV_SIZE);
}

void SaveROM(){
	NVROM[1] = selectedStartStation;		//출발역ID
	NVROM[2] = selectedEndStation;			//목적지ID
	NVROM[3] = trackingCurrentStationIndex;	//현재역인덱스
	PutUserNV(NVROM, NV_SIZE);
}