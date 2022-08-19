var obj = object_index;

var kidDot = global.dotkid; 
var kidLunar = global.lunarkid; 
var kidLine = global.linekid; 
var kidGrav = global.grav;

if (obj != oPlayer && obj != oPlayerCopy)
{
    kidDot = dotkid;
    kidLunar = lunarkid;
    kidLine = linekid;
    kidGrav = grav;
}

if (kidDot) 
{
    sprite_index = sDotkid;
    mask_index = sDotkid;
}
else if (kidLunar) 
{
    sprite_index = sLunarkid;
    mask_index = sLunarkid;
}
else if (kidLine) 
{
    sprite_index = sLinekid;
    mask_index = sLinekid;
}
else 
{
    if (sign(kidGrav) == 1)
        mask_index = sPlayerMask;
    else if (sign(kidGrav) == -1)
        mask_index = sPlayerMaskFlip;
        
    sprite_index = sPlayerIdle;
}
