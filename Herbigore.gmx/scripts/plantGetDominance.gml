genome = argument0;

arr[0] = genome[6]
arr[1] = genome[7]

dominance = binaryArrayToDec(arr);
show_debug_message("Genome: " + string(genome));
show_debug_message("Calculated dominance: " + string(dominance));
return dominance;
