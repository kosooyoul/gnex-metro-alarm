
void DrawMetro(){
	int i;

	for(i = 0; i < resultPathSize; i++){
		DrawInt(50, 10 + 20 * i, saveJointList[resultPath[i]].id);
		DrawInt(80, 10 + 20 * i, saveJointList[resultPath[i]].time);
	}

	



	for(i = 0; i < foundJointSize; i++){
		DrawInt(160, 10 + 16 * i, foundJoint[i]);
	}












}