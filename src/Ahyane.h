
void DrawInt(int x, int y, int value){
	string tempString;
	MakeStr1(tempString, "%d", value);
	DrawStr(x, y, tempString);
}