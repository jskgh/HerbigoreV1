/* WARNING: Function can only be run by player  */


names = ds_list_create();

castNames[0] = "Obstra";
castNames[1] = "Ico";
castNames[2] = "Murus";
castNames[3] = "Acie";
castNames[4] = "Adsult";
castNames[5] = "Irruo";
castNames[6] = "Tonare";
castNames[7] = "Radia";
elementNames[0] = "Pyra";
elementNames[1] = "Justa";
elementNames[2] = "Energa";
elementNames[3] = "Vitala";
elementNames[4] = "Aqua";
elementNames[5] = "Necra";
elementNames[6] = "Umbra";
elementNames[7] = "Entropa";
dominanceNames[0] = "Subnus";
dominanceNames[1] = "Passus";
dominanceNames[2] = "Actus";
dominanceNames[3] = "Dominus";


for(i = 0; i < ds_list_size(inventory); i++){
    genome = ds_list_find_value(inventory,i);
    
    cast = binaryArrayToDec(plantGetCast(genome));
    element = binaryArrayToDec(plantGetElement(genome));
    dominance = binaryArrayToDec(plantGetDominance(genome));
    
    str = "";
    str = string_insert(castNames[cast] + " ",str,string_length(str));
    str = string_insert(elementNames[element] + " ",str,string_length(str)+1);
    str = string_insert(dominanceNames[dominance],str,string_length(str)+1);
    
    ds_list_add(names,str);
}


return names;

