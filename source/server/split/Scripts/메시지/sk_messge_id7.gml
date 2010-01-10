// id* 처리

on_mess_read(0)

if on_dame_app(1, 0, 0)=1
{
global.playerlist+=mplay_message_name()+'|'
on_mess_send(0, 8, global.playerlist)
}

// sk_messge_id*()
