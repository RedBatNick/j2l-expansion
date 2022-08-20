/// comboBoxButton(x, y, w, h, droph, text, icon)

var xx = argument[0];
var yy = argument[1];
var w = argument[2];
var h = argument[3];
var droph = argument[4];
var text = argument[5];
var icon = argument[6];

var enabled = global.state == globalstate_idle && !global.comboboxselected;
if (menuButton(xx,yy,w,h,text,enabled,icon)) {
    selected = !selected;
    global.comboboxselected = selected;
}

if (selected
&& (mouse_x < xx || mouse_x > xx+w-1
|| mouse_y < yy || mouse_y > yy+h+droph-1
|| global.state != globalstate_idle)) {
    selected = false;
    global.comboboxselected = false;
}
