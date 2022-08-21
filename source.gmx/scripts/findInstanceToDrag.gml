var instanceX = argument[0];
var instanceY = argument[1];

with (all) {
    if (!controlObject("inPalette", object_index)) {
        continue;
    }
    
    var water = string_count(object_get_name(object_index), "oWater") > 1;
    if (global.waterlocked && water) {
        continue;
    }
    
    if (collision_point(instanceX,instanceY,id,true,false)) {
        return id;
    }
}

return noone;
