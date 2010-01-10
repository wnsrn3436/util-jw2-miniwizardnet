//공유변수에 데이타를 저장하는 스크립트

var dit_wait; dit_wait=''
//임시변수를 선언합니다

for(i=1; string(argument[i])!='0'; i+=1)
{
//argument[i]가 써져있지않을때까지 반복합니다
dit_wait = dit_wait+string(argument[i])+'^'
//변수는 argument[i]+^ 한 값을 가집니다
}

mplay_data_write(space[argument0],dit_wait)
//다 조합한 변수를 공유변수에 저장합니다

/*
argument0 = 공유변수자리
argument[1]~[15] = 전송할 변수
on_data_send(공유변수자리,전송할변수1,전송할변수2……전송할변수15)
*/