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
	#DEFINE APPCPID		60000
	#DEFINE APPID		1
	#DEFINE APPNAME		"Metro GNEX App"
	#DEFINE COMPTYPE	0
	#DEFINE AGENTTYPE	0
	#DEFINE VALIDCOUNT	255
	#DEFINE VALIDTERM	255
	#DEFINE DIRECTRUN	0
	#DEFINE APPVER		1
%}
#endif

#include <SScript.h>
#include "Station.h"
#include "SearchStation.h"

void main(){
	InitSubway();
	InitFoundJoint();
	ClearWhite();
	RouteStation(000, 305);
	DrawInt(10, 10, GetJointStationId(GetFoundJoint(0), 0));
	DrawInt(10, 30, GetJointStationId(GetFoundJoint(1), 0));
	DrawInt(10, 50, GetJointStationId(GetFoundJoint(2), 0));
	DrawInt(10, 70, GetJointStationId(GetFoundJoint(3), 0));
	DrawInt(50, 10, foundJoint[0]);
	DrawInt(50, 30, foundJoint[1]);
	DrawInt(50, 50, foundJoint[2]);
	DrawInt(50, 70, foundJoint[3]);
	Flush();
}

void DrawInt(int x, int y, int value){
	string tempString;
	MakeStr1(tempString, "%d", value);
	DrawStr(x, y, tempString);
}