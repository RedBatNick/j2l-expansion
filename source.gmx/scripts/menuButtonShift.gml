/// menuButton(x, y, w, h, text, enabled, icon)

// Draws a button and returns whether or not it was clicked.

var xx = argument[0];
var yy = argument[1];
var w = argument[2];
var h = argument[3];
var text = argument[4];
var enabled = argument[5];
var icon = argument[6];

var pressed = menuButton(argument[0], argument[1], argument[2], argument[3], argument[4], argument[5], argument[6]);
var mouse_hover = point_in_rect(mouse_x,mouse_y,xx,yy,xx+w-1,yy+h-1) && enabled;

if (mouse_hover) {
    draw_set_font(font_small);
    var sss = "Shift by grid snap";
    var w = string_width(sss)+10;
    var xx = min(mouse_x, room_width-5-w);
    menuButton(xx, mouse_y+20, w, 25, sss, false, false);
}

return pressed;
