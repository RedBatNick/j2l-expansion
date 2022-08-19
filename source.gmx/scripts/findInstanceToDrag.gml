var instanceX = argument0;
var instanceY = argument1;

with( all ) {
    if( !controlObject('inPalette', object_index ) ) {
        continue;
    }
    if( global.waterlocked && 
    (object_index == oWater 
    || object_index == oWater2 
    || object_index == oWater3 
    || object_index == oWaterNekoron
    || object_index == oWaterCatharsis) ) {
        continue;
    }
    if( collision_point( instanceX, instanceY, id, true, false ) ) {
        return id;
    }
}

return noone;
