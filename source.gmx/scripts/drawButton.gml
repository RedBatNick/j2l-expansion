/// drawButton(x,y,w,h,active)

// Draws a button

var xx = argument[0];
var yy = argument[1];
var w = argument[2];
var h = argument[3];
var active = argument[4];

draw_set_alpha(1);
draw_set_color(global.color_button);
draw_rectangle(xx,yy,xx+w-1,yy+h-1,false);

if (active) 
{
    draw_set_alpha(global.buttonhoveralpha);
    draw_set_color(global.color_buttonhover);
    draw_rectangle(xx,yy,xx+w-1,yy+h-1,false);
    
    if (global.buttonhoverborder)
    {
        draw_set_alpha(0.3);
        draw_set_color(c_black);
        draw_rectangle(xx-1,yy-1,xx+w,yy+h,true);
    }
}

draw_set_alpha(1);
draw_set_color(c_black);
draw_rectangle(xx,yy,xx+w-1,yy+h-1,true);
