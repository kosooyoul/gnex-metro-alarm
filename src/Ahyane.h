
void DrawInt(int x, int y, int value){
	string tempString;
	MakeStr1(tempString, "%d", value);
	DrawStr(x, y, tempString);
}

void DrawMultiLineText(int *text, int leftMargin, int top, int lineLength, int lineHeight){
        int font_width;                // 한 폰트의 길이, 한 줄에 가능한 글자 수
        int first_pos = 0;             // 각 문장의 처음 위치
        int empty_pos = 0;             // 문장의 마지막 위치
        int all_size = StrLen(text);   // 주어진 문장 전체 길이
        string str_div;                // 잘린 문자열
        int i, j;

        font_width = GetFontWidth();   // 한 폰트의 길이

        while(1){
                StrSub(str_div, text, first_pos, first_pos + lineLength);
                for(i = 0; i < lineLength;){
                        if(GetChar(str_div, i) & 0x80){                // 한글은 첫 bit가 1 (음수형태)
                                if(i + 1 == lineLength) break;        // 한글이 문장 마지막에 걸칠 경우
                                else i += 2;
                        }else i++;
                        empty_pos = i;                                                // 문장의 마지막 위치 값을 입력
                }
                StrSub(str_div, text, first_pos, empty_pos);

                if(first_pos >= all_size) break;                // while(1) 종료 조건 (전체 글자 모두 출력되면)

                DrawStr(leftMargin, top, str_div);

                first_pos += empty_pos;                                        //다음줄 계산
                top += lineHeight;
        }
        //return top;                                                //다음 텍스트가 올 위치를 반환
}