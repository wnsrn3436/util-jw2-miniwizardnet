//id를 로드함

max_id=0

for(i=0; file_exists("_id_\id_"+string(i)+".txt")=1; i+=1)
{
opopopen=file_text_open_read("_id_\id_"+string(i)+".txt")

ids[i]=file_text_read_string(opopopen)
file_text_readln(opopopen)
ps[i]=file_text_read_string(opopopen)

file_text_close(opopopen)
max_id+=1
} 

// sk_id_load()
