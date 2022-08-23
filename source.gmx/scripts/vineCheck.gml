///scrVineCheck(x,y,obj,notOnBlock)
//checks for collision with vines, and that the vine itself is active (relevant for the twin vines)

var _x = argument[0];
var _y = argument[1];
var _obj = argument[2];
var _notOnBlock = argument[3];

if (global.vkid)// || instance_exists(objYoshiControl) 
    return false; //Don't allow vines with V kid or Yoshi

var found = (place_meeting(_x, _y, _obj) && _notOnBlock);
if (!found) 
    return false;

var inst = instance_place(_x, _y, _obj);

/*if (inst.object_index == objTwinWhiteVineL 
|| inst.object_index == objTwinWhiteVineR 
|| inst.object_index == objTwinBlackVineL 
|| inst.object_index == objTwinBlackVineR) {
    return inst.active;
}*/

return true;
