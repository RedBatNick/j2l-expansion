var xx = argument[0];
var yy = argument[1];
var obj = argument[2];

var object_at_position = false;
with (obj) {
    if (x == xx && y == yy) {
        object_at_position = true;
    }
}

if (!object_at_position) {
    editCreateObject(xx, yy, obj);
}
