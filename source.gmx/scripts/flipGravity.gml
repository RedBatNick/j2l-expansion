var d = numJumps-1;

if (argument_count >= 1)
    d = argument[0];

if (!global.lunarkid) 
{
    global.grav *= -1;
    djump = d;
    vspeed = 0;
    jump = 8.5 * global.grav;
    jump2 = 7 * global.grav;
    gravity = 0.4 * global.grav;
    y += 4*global.grav;
}
