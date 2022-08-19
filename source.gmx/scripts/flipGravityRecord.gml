with (oRecordPlayer) 
{
    if (!lunarkid)
    {
        grav *= -1;
        djump = 1;
        vspeed = 0;
        jump = 8.5 * grav;
        jump2 = 7 * grav;
        gravity = 0.4 * grav;
        y += 4*grav;
    }
}
