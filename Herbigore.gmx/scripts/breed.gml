g1 = argument0;
g2 = argument1;
var j = 0;
repeat(14){
    child[j] = 0;
    j++;
}
cp1 = 0;
cp2 = 0;

rand1 = irandom(4);
rand2 = rand1 + irandom(4-rand1);


switch(rand1){
    case 0: cp1 = 2;
            break;
    case 1: cp1 = 5;
            break;
    case 2: cp1 = 8;
            break;
    case 3: cp1 = 10;
            break;
    case 4: cp1 = 12;
            break;
}

switch(rand2){
    case 0: cp2 = 2;
            break;
    case 1: cp2 = 5;
            break;
    case 2: cp2 = 8;
            break;
    case 3: cp2 = 10;
            break;
    case 4: cp2 = 12;
            break;
}



var i;
for(i = 0; i < cp1; i++){
    child[i] = g1[i];
}

var i;
for(i = cp1; i < cp2; i++){
    child[i] = g2[i];
}

var i;
for(i = cp2; i < 14; i++){
    child[i] = g1[i];
}




return child;

