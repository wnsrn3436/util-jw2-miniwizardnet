// id* 처리

on_mess_read(0)

if on_dame_app(1, 0, 0)=1{show_message_ext("id가 없거나 비밀번호가 다릅니다.  ", "X", "", "")}
if on_dame_app(1, 0, 0)=2{mplay_session_end(); mplay_session_join(0, obj_id_go.ids); room_goto_next()}

// sk_messge_id*()
