// id* 처리

with(obj_ser_chatting)
{

on_mess_read(0)

global.yousgood+=1
var key_number3; key_number3=global.yousgood

while(key_number3!=0)
{
key_number[key_number3]=key_number[key_number3-1];key_number3-=1
}

key_number[0]=on_dame_app(2, 0, 0)

}

// sk_messge_id*()
