//오브젝트에게 공유변수의 자리를주는 스크립트

var iid,control; iid=0; control=0
//임시변수를 선언합니다

iid=global.iid; global.iid+=1
//iid는 global.iid을 갖고 global.iid를 +1합니다

if(floor(iid/2)=iid/2){control=iid*global.obj_space-global.obj_space*2+global.player_space}
//짝수일경우 알맞은 공유변수자리를 줍니다
else{control=iid*global.obj_space+global.player_space}
//홀수일경우 알맞은 공유변수 자리를 줍니다

for(i=0; i!=global.obj_space+1; i+=1)
{
//오브젝트가 사용할 자리변수만큼 반복합니다
space[i]=control+i
//자리변수는 알맞은 자리를 가져갑니다
}

/*
on_space_dit()
*/