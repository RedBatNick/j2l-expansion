///drawTooltip([ tooltip ])
if (tooltip_to_draw == "") {
    return 0;
}

fontSetup(global.systemfont,c_black,fa_center,fa_center,1);
var ttw = string_width(tooltip_to_draw) + 10;
var tth = string_height(tooltip_to_draw) + 10;
var ttx = max(mouse_x - ttw, 5);
var tty = min(ttx, mouse_y + 20);
drawButton(ttx,tty,ttw,tth,false);
draw_text(round(ttx+ttw/2),round(tty+tth/2),tooltip_to_draw);
tooltip_to_draw = "";
