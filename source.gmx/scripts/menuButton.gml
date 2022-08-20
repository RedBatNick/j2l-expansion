/// menuButton(x, y, w, h, text, enabled, icon)

// Draws a button and returns whether or not it was clicked.

var xx = argument[0];
var yy = argument[1];
var w = argument[2];
var h = argument[3];
var text = argument[4];
var enabled = argument[5];
var icon = argument[6];

var mouse_hover = point_in_rect(mouse_x,mouse_y,xx,yy,xx+w-1,yy+h-1) && enabled;

drawButton(xx,yy,w,h,mouse_hover);
fontSetup(font_small,c_black,fa_center,fa_center,1);
if (icon) 
{
    draw_text(xx+w/2+12,yy+h/2,text);
    draw_sprite(icon,0,xx+16,yy+h/2);
}
else 
{
    draw_text(xx+w/2,yy+h/2,text);
}

return mouse_hover && mouse_check_button_pressed(mb_left);
