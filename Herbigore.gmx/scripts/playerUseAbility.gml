genome = argument0;

cast = plantGetCast(genome);
element = plantGetElement(genome);
duration = plantGetDuration(genome);
range = plantGetRange(genome);
strength = plantGetStrength(genome);

global.t_cast = cast;
global.t_element = element;
global.t_duration = duration;
global.t_range = range;
global.t_strength = strength;
inst = instance_create(-999,-999,obj_ability);

return inst;
