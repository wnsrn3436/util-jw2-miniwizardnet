// id* 처리

on_mess_read(0)

if on_dame_app(1, 0, 0)=1
{
on_mess_send(mplay_message_player(), 1, login_text[0], login_text[1], login_text[2], login_text[3], login_text[4], login_text[5], login_text[6], login_text[7], login_text[8], login_text[9], login_text[10], login_text[11], login_text[12])
on_mess_send(mplay_message_player(), 6, global.maker, global.version)
}

// sk_messge_id*()
