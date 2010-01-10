if argument0=1
{
//변수로 받는다면
return real(explode[argument1,argument2])
//변수로 값을 돌려줍니다
}

if argument0=2
{
//문자열로 받는다면
return explode[argument1,argument2]
//문자열로 값을 돌려줍니다
}

/*
argument0 = 변수로받기-1 , 문자로받기-2
argument1 = 배열저장자리
argument2 = 변수자리
on_dame_app(변수/문자,받을배열저장자리,변수자리)
*/