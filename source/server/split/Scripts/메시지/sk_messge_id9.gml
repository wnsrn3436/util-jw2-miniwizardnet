// id* 처리

on_mess_read(0)

global.playerlist=string_replace(global.playerlist, "|"+on_dame_app(2, 0, 0)+"|", "|")
on_mess_send(0, 8, global.playerlist)

// sk_messge_id*()
