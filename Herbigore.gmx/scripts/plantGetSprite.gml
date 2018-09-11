genome = argument0;

fShape = plantGetCast(genome);
fColour = plantGetElement(genome)
fQuantity = plantGetDominance(genome)
pShape = random(3);

surf = surface_create(32, 32);
surface_set_target(surf);
draw_clear_alpha(c_black, 0);
//surface_reset_target();



var hue = -1;
switch(fColour){
    case 0: hue = 0; break; // Fire 
    case 1: hue = 15; break; // Justice
    case 2: hue = 28; break; // Energy 
    case 3: hue = 65; break; // Life 
    case 4: hue = 134; break; // Water
    case 5: hue = 172; break; // Death
    case 6: hue = 190; break; // Dark
    case 7: hue = 205; break; // Chaos
}

surface_set_target(surf);
draw_sprite(spr_plantBase, pShape, 16, 16); 


// TODO: More intelligent placement of flowers
col = make_colour_hsv(hue,240,240);
var i;
for(i = 0; i < fQuantity; i++){
    draw_sprite_ext(spr_flower,fShape,irandom(32),irandom(32), image_xscale, image_yscale, image_angle, col, image_alpha ); //fColour
}


spr = sprite_create_from_surface(surf,0,0,32,32,0,0,0,0);
draw_clear_alpha(c_black, 0);
surface_reset_target();
surface_free(surf);



return spr;

    

