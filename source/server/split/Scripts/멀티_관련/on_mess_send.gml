//다른 사용자에게 메시지를보내는 스크립트

var dit_wait; dit_wait=''
//임시변수를 선언합니다

for(i=2; string(argument[i])!='0'; i+=1)
{
//argument[i]가 써져있지않을때까지 반복합니다
dit_wait = dit_wait+string(argument[i])+'^'
//변수는 argument[i]+^ 한 값을 가집니다
}

mplay_message_send_guaranteed(argument0,argument1,dit_wait)
//해당 사용자에게 값과 메시지를 보냅니다

/*
argument0 = 보낼 플레이어
argument1 = 보낼 메시지id
argument[2]~[15] = 전송할 변수 
on_mess_send(보낼플레이어,보낼메시지id,전송할변수2,전송할변수3……전송할변수15)
*/