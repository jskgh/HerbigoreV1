X = argument0;
Y = argument1;
width = argument2;
height = argument3;
text = argument4;
x1 = X - width/2;
y1 = Y + height/2;
x2 = X + width/2;
y2 = Y - height/2;
draw_set_colour(c_black);

mX = device_mouse_x_to_gui(0);
mY = device_mouse_y_to_gui(0);


if((mX > x1) && (mX < x2) && (mY < y1) && (mY > y2)){
    draw_set_colour(c_dkgray);

    if(mouse_check_button_pressed(mb_left)){
        return 1;
    }
} else {
    draw_set_colour(c_black);
}   

draw_rectangle(x1,y1,x2,y2,false);
draw_set_colour(c_white)
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(X,Y,text);

return 0;
