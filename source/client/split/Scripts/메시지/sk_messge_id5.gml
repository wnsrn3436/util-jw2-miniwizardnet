// id* 처리

on_mess_read(0)

if on_dame_app(1, 0, 0)=1{show_message_ext("같은 id가 존재합니다.  ", "X", "", "")}
if on_dame_app(1, 0, 0)=2{show_message_ext("가입완료!  ", "X", "", "")}

// sk_messge_id*()
