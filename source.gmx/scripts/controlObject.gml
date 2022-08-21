///controlObject(type, [val])
///combines the functionality of the xObject scripts
///so it"s much easier to modify the palette objects

var type,val;

if (argument_count >= 1) {
    type = argument[0];
}
if (argument_count >= 2) {
    val = argument[1];
}

switch(type)
{
    case "saveID": return object_get_name(val); break;
    case "loadID": return asset_get_index(val); break;
    case "inPalette":
    for (var i = 0; i < ds_list_size(global.palette); i++) {
        var obj_palette = global.palette[| i];
    
        if (obj_palette[? "Object"] == val) {
            return true;
        }
    
        var cycle = obj_palette[? "Cycle"];
    
        if (cycle == undefined) {
            continue;
        }
    
        for (var j = 0; j < array_length_1d(cycle); j++) {
            if (cycle[j] == val) {
                return true;
            }
        }
    }
    
    return false;
    break;
}
