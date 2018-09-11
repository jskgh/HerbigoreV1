bin = argument0;
decimal = 0;  
n = 0;  

while(true){  
    if(binary == 0){  
        break;  
    } else {  
        temp = binary%10;  
        decimal += temp*power(2,n);
        binary = binary/10;  
        n++;  
    }  
}


return decimal;  
 
