//문자열변수를 나누는 스크립트

var str,pos; str=argument0; pos=0
//임시변수를 선언합니다

if string_count(argument2,argument0)=0
{
//만약 잘라낼문자열변수가0개라면
for(i=0; i!=16; i+=1){explode[argument1,i]=-50}
//-50을 줍니다
}

for (i=0; i<string_count(argument2,argument0); i+=1)
{
//잘라낼 문자열의 갯수만큼 반복합니다
pos=string_pos(argument2,str);
//잘라낼 문자열의 위치를 검색합니다
explode[argument1,i]=string_copy(str,0,pos-1);
//새 변수 = 잘라낼 문자열의 위치-1
str=string_delete(str,1,pos);
//전체 문자열변수에서 잘라낼 문자열의 위치를 자릅니다
}

return string_count(argument2,argument0);
// 변수=(이스크립트) 를 했을때 변수는 잘라낼 문자열의 갯수를 갖습니다

/*
argument0 = 문자열 변수
argument1 = 배열저장 자리
argument2 = 잘라낼 문자열
sk_dit_car(문자열변수,배열저장자리,잘라낼문자열)
*/