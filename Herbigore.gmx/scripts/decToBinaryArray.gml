n = argument0;
var arr;
i = 0;

while(n > 0){
    arr[i++] = n%2;
    n = n/2;
}


return arr;
