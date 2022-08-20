///point_in_rect(px,py,x1,y1,x2,y2)
var px = argument[0];
var py = argument[1];
var x1 = argument[2];
var y1 = argument[3];
var x2 = argument[4];
var y2 = argument[5];

return px >= x1 && px < x2 && py >= y1 && py < y2;
