
void DrawMetro(){
	int i;


	DrawInt(10, 10, GetJointStationId(GetFoundJoint(0), 0));
	DrawInt(10, 30, GetJointStationId(GetFoundJoint(1), 0));
	DrawInt(10, 50, GetJointStationId(GetFoundJoint(2), 0));
	DrawInt(10, 70, GetJointStationId(GetFoundJoint(3), 0));
	DrawInt(50, 10, foundJoint[0]);
	DrawInt(50, 30, foundJoint[1]);
	DrawInt(50, 50, foundJoint[2]);
	DrawInt(50, 70, foundJoint[3]);





	for(i = 0; i < foundJointSize; i++){
		DrawInt(100, 10 + 16 * i, foundJoint[i]);
	}


}