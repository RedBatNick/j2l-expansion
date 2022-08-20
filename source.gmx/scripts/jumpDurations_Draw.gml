var xx = argument[0];
var yy = argument[1];
var dy = argument[2];

var rls = 0;

fontSetup(font_small,c_black,fa_left,fa_top,1);
var xo = 53;
//show_debug_message(string(framecount_jump1)+" "+string(framecount_jump1_jc1)+" "+string(framecount_jump1_jc2)+" "+string(framecount_jump1_jc3))

draw_text(xx,yy,"Jump");
if (jumpstate == jstate_1wait
|| jumpstate == jstate_2hold
|| jumpstate == jstate_2wait
|| jumpstate == jstate_done) {
    if (framecount_jump1_jc1 == 0)
        draw_text(xx+xo,yy,number_to_frames_string(framecount_jump1));
    else
    {
        if (framecount_jump1_jc2 == 0)
        {
           rls = framecount_jump1_jc1;
           draw_text(xx+xo-5,yy,string(framecount_jump1)+"+"+string(framecount_jump1_jc1)+" cactus");
        }
        else if (framecount_jump1_jc3 == 0)
        {
           rls = framecount_jump1_jc2+framecount_jump1_jc1;
           draw_text(xx+xo,yy,string(framecount_jump1)+"+"+string(framecount_jump1_jc1)+"+"+string(framecount_jump1_jc2-framecount_jump1_jc1)+" cac");
        }
        else
        {
           rls = framecount_jump1_jc2+framecount_jump1_jc1+framecount_jump1_jc3;
           draw_text(xx+xo-15,yy,string(framecount_jump1)+"+"+string(framecount_jump1_jc1)+"+"+string(framecount_jump1_jc2-framecount_jump1_jc1)+"+"+string(framecount_jump1_jc3-framecount_jump1_jc2)+" cac");
        }
    } 
}

yy += dy;
draw_set_alpha(0.3);
draw_text(xx,yy,"Pause");
if (jumpstate == jstate_2hold
|| jumpstate == jstate_2wait
|| jumpstate == jstate_done) {
    if (framecount_pause-rls == 0)
        draw_text(xx+xo,yy,number_to_frames_string(framecount_pause));
    else
        draw_text(xx+xo,yy,number_to_frames_string(framecount_pause));
    //draw_text(xx+xo,yy,number_to_frames_string(framecount_pause-rls<0?0:framecount_pause-rls))
}

yy += dy;
draw_set_alpha(1);
draw_text(xx,yy,"Djump");
if (jumpstate == jstate_2wait
|| jumpstate == jstate_done) {
    if(framecount_jump2_jc1 == 0)
        draw_text(xx+xo,yy,number_to_frames_string(framecount_jump2));
    else
    {
        if (framecount_jump2_jc2 == 0)
            draw_text(xx+xo-5,yy,string(framecount_jump2)+"+"+string(framecount_jump2_jc1)+" cactus");
        else 
            draw_text(xx+xo,yy,string(framecount_jump2)+"+"+string(framecount_jump2_jc1)+"+"+string(framecount_jump2_jc2-framecount_jump2_jc1)+" cac");
    }
}

yy += dy;
draw_set_alpha(0.3);
draw_text(xx,yy,"Pause");
if (jumpstate == jstate_done) {
    draw_text(xx+xo,yy,number_to_frames_string(framecount_pause2));
}

draw_set_alpha(1);
