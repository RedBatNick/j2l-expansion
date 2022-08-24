/// menuButton(x, y, w, h, text, enabled, icon, [tooltip])

// Draws a button and returns whether or not it was clicked.

var xx = argument[0];
var yy = argument[1];
var w = argument[2];
var h = argument[3];
var text = argument[4];
var enabled = argument[5];
var icon = argument[6];

var tooltip = "";
if (argument_count == 8)
    tooltip = argument[7];

var mouse_hover = point_in_rect(mouse_x,mouse_y,xx,yy,xx+w-1,yy+h-1) && enabled;

drawButton(xx,yy,w,h,mouse_hover);
fontSetup(global.systemfont,c_black,fa_center,fa_center,1);
if (icon) 
{
    draw_text(round(xx+w/2)+12,round(yy+h/2),text);
    draw_sprite(icon,0,xx+16,yy+h/2);
}
else 
{
    draw_text(round(xx+w/2),round(yy+h/2),text);
}

if (mouse_hover && tooltip != "") {
    var ttw = string_width(tooltip) + 10;
    var tth = string_height(tooltip) + 10;
    var ttx = min(mouse_x, room_width - 5 - ttw);
    var tty = min(ttx, mouse_y + 20);
    drawButton(ttx,tty,ttw,tth,false);
    draw_text(round(ttx+ttw/2),round(tty+tth/2),tooltip);
}

return mouse_hover && mouse_check_button_pressed(mb_left);
