arr = argument0;

if(is_array(arr)){
    size = array_length_1d(arr)-1;
    var val = 0;
    var i;
    
    for(i = 0; i <= size; i++){
        if(arr[i] == 1){
            val += power(2,size-i);       
        }
    }
    
    return val;
} else {
    return 999;
}
