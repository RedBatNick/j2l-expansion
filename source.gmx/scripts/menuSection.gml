/// menuSection(x,y,text,drawline)

var xx = argument[0];
var yy = argument[1];
var text = argument[2];
var drawline = argument[3];

fontSetup(global.systemfont,c_black,fa_left,fa_top,1);
if (drawline) 
    draw_line(xx-25,y,xx-25,y+menu_height-1);

draw_text(xx+0,yy-45,text);
