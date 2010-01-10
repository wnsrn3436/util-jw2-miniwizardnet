// id* 처리

on_mess_read(0)

var errer, errer2, iii;
errer=0; errer2=0; iii=-1

for(i=0; i!=max_id; i+=1)
{
if on_dame_app(2, 0, 0)=ids[i]{errer=1; iii=i; break}
}

if iii>-1
{
if on_dame_app(2, 0, 1)=string(ps[iii]){errer2=1}
}

if errer=0 or errer2=0{on_mess_send(mplay_message_player(), 3, 1)}
if errer=1 and errer2=1{on_mess_send(mplay_message_player(), 3, 2)}

// sk_messge_id*()
