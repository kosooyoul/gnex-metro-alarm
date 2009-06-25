#define FOUNDJOINT_ORDER_BY_TIME		0

//셸 정렬(배열 사이즈, 정렬 방법)
void Sort(int size, int sortData){
	int i, j;
	int interval = size / 2;
	while(interval >= 1){
		for(i = 0; i < interval; i++){
			switch(sortData){
				case FOUNDJOINT_ORDER_BY_TIME:
					IntervalSort(i, size - 1, interval);
			}
		}interval /= 2;
	}
}

//부분정렬(FOUNDJOINT_ORDER_BY_TIME) - 검색 할 교차점, 내림 차순
//#bug# 개선되야할 점 : int형 Reference배열을 써야 정렬시 대입 횟수가 줄어듬
void IntervalSort(int begin, int end, int interval){
	struct FoundJoint joint;	//{id, time, prevId}
	int i, j;

	for(i = begin + interval; i <= end; i += interval){
		joint.id = foundJoint[i].id;
		joint.time = foundJoint[i].time;
		joint.prevId = foundJoint[i].prevId;
		joint.jointIndex = foundJoint[i].jointIndex;
		for(j = i - interval; j >= begin && joint.time </* 오름차순 '<'였음 */ foundJoint[j].time; j -= interval){
			foundJoint[j + interval].id = foundJoint[j].id;
			foundJoint[j + interval].time = foundJoint[j].time;
			foundJoint[j + interval].prevId = foundJoint[j].prevId;
			foundJoint[j + interval].jointIndex = foundJoint[j].jointIndex;
		}
		foundJoint[j + interval].id = joint.id;
		foundJoint[j + interval].time = joint.time;
		foundJoint[j + interval].prevId = joint.prevId;
		foundJoint[j + interval].jointIndex = joint.jointIndex;
	}
}

