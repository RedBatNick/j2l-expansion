///playerSprite(sprite)

var sprite = argument[0];
var obj = object_index;

var kidDot = global.dotkid;
var kidLunar = global.lunarkid;
var kidLine = global.linekid;
var kidGrav = global.grav;
var kidClip = global.dotclip;

if (obj != oPlayer)
{
    var kidDot = dotkid;
    var kidLunar = lunarkid;
    var kidLine = linekid;
    var kidGrav = grav;
    var kidClip = dotclip;
}

if (kidDot) 
{ 
    mask_index = sDotkid;
    sprite_index = sDotkid;
}
else if (kidLunar) 
{ 
    mask_index = sLunarkid;
    sprite_index = sLunarkid;
}
else if (kidLine) 
{
    mask_index = sLinekid;
    sprite_index = sLinekid;
}
else 
{ 
    if (sign(kidGrav) == 1)
        mask_index = sPlayerMask;
    else if (sign(kidGrav) == -1)
        mask_index = sPlayerMaskFlip;
    
    if (kidClip)
        event_user(0);
        
    sprite_index = sprite;
}
