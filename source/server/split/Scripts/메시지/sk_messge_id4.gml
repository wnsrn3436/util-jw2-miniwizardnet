// id* 처리

on_mess_read(0)

var errer;
errer=0

for(i=0; i!=max_id; i+=1)
{
if on_dame_app(2, 0, 0)=ids[i]{errer=1; break}
}

if errer=1{on_mess_send(mplay_message_player(), 5, 1)}
else
{
on_mess_send(mplay_message_player(), 5, 2)

opopopen=file_text_open_write("_id_\id_"+string(max_id)+".txt")

file_text_write_string(opopopen, on_dame_app(2, 0, 0))
file_text_writeln(opopopen)
file_text_write_string(opopopen, on_dame_app(2, 0, 1))

file_text_close(opopopen)

sk_id_load()
}

// sk_messge_id*()
