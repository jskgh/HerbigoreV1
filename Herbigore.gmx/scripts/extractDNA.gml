genome = argument0;

// 3 = flower shape
fShapeArr[0] = genome[0]
fShapeArr[1] = genome[1]
fShapeArr[2] = genome[2]
// 3 = flower colour
fColourArr[0] = genome[3]
fColourArr[1] = genome[4]
fColourArr[2] = genome[5]

// 3 = flower quantity
fQuantityArr[0] = genome[6]
fQuantityArr[1] = genome[7]

// 6 = plant shape
pShapeArr[0] = genome[8]
pShapeArr[1] = genome[9]
pShapeArr[2] = genome[10]
pShapeArr[3] = genome[11]
pShapeArr[4] = genome[12]
pShapeArr[5] = genome[13]


// 2 duration
dArray[0] = genome[8];
dArray[1] = genome[9];

// 2 range
rArray[0] = genome[10];
rArray[1] = genome[11];

// 2 strength
sArray[0] = genome[12];
sArray[1] = genome[13];



ID = binaryArrayToDec(genome);

fShape = binaryArrayToDec(fShapeArr);
fColour = binaryArrayToDec(fColourArr);
fQuantity = binaryArrayToDec(fQuantityArr);
pShape = binaryArrayToDec(pShapeArr);

duration = binaryArrayToDec(dArray);
range = binaryArrayToDec(rArray);
strength = binaryArrayToDec(sArray);

cast = fShape;
element = fColour;
dominance = fQuantity;



inst = instance_create(-999,-999,obj_plant);
with(inst){
    genome = other.genome;
    cast = other.cast;
    element = other.element;
    dominance = other.dominance;
    duration  = other.duration;
    range = other.range;
    strength = other.strength;

    fShape = other.fShape;
    fColour = other.fColour;
    fQuantity = other.fQuantity;
    pShape = other.pShape;
}

return inst;
