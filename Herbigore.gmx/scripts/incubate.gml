genome = argument0;
additive = argument1;
additiveQuantity = argument2;
ph = argument3;
h2o = argument4;
temp = argument5;
light = argument6;
additiveQuantityMax = 5;


cast = plantGetCast(genome);
element = plantGetElement(genome);

n = irandom(additiveQuantityMax - additiveQuantity);

if(n == 0){

    switch(additive){
        case ADDITIVE_COAL:     genome[3] = 0; genome[4] = 0; genome[5] = 0; break;
        case ADDITIVE_IRON:     genome[3] = 0; genome[4] = 0; genome[5] = 1; break;
        case ADDITIVE_COPPER:   genome[3] = 0; genome[4] = 1; genome[5] = 0; break;
        case ADDITIVE_WAX:      genome[3] = 0; genome[4] = 1; genome[5] = 1; break;
        case ADDITIVE_SALT:     genome[3] = 1; genome[4] = 0; genome[5] = 0; break;
        case ADDITIVE_LEAD:     genome[3] = 1; genome[4] = 0; genome[5] = 1; break;
        case ADDITIVE_CHALK:    genome[3] = 1; genome[4] = 1; genome[5] = 0; break;
        case ADDITIVE_GOLD:     genome[3] = 1; genome[4] = 1; genome[5] = 1; break;        
        case ADDITIVE_COBALT:   genome[0] = 0; genome[1] = 0; genome[2] = 0; break;
        case ADDITIVE_DIAMOND:  genome[0] = 0; genome[1] = 0; genome[2] = 1; break;
        case ADDITIVE_MINIUM:   genome[0] = 0; genome[1] = 1; genome[2] = 0; break;
        case ADDITIVE_AMBER:    genome[0] = 0; genome[1] = 1; genome[2] = 1; break;
        case ADDITIVE_OIL:      genome[0] = 1; genome[1] = 0; genome[2] = 0; break;
        case ADDITIVE_SUGAR:    genome[0] = 1; genome[1] = 0; genome[2] = 1; break;
        case ADDITIVE_CUPRITE:  genome[0] = 1; genome[1] = 1; genome[2] = 0; break;
        case ADDITIVE_GLASS:    genome[0] = 1; genome[1] = 1; genome[2] = 1; break;
        
    }


}

