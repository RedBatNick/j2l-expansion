jc_count += 1;

var leftshift = keyboard_check_direct(vk_lshift);
var rightshift = keyboard_check_direct(vk_rshift);

var leftshiftpressed = leftshift && !jc_leftshiftlast;
var rightshiftpressed = rightshift && !jc_rightshiftlast;

var leftshiftreleased = !leftshift && jc_leftshiftlast;
var rightshiftreleased = !rightshift && jc_rightshiftlast;

if (global.frameaction_jump || global.frameaction_djump) {
    jc_show = false;
    jc_successwaitingforrelease = false;
}

// checking for (left or right) ------> (neither) --(<3)--> (left or right)
// (too late)
if ((leftshiftreleased || rightshiftreleased) && !leftshift && !rightshift) {
    jc_latewaiting = true;
    jc_count = 0;
}
if (jc_latewaiting) {
    if (jc_count > jc_cutoff) {
        jc_latewaiting = false;
    }
    else if (leftshiftpressed || rightshiftpressed) {
        jc_latewaiting = false;
        jc_duration = -jc_count;
        jc_show = true;
    }
}

// checking for (1 0) ------> (1 1) --(<3)--> (0 1)
// (too early)
if (leftshift && jc_leftshiftlast && rightshiftpressed) {
    jc_earlywaiting = 1;
    jc_count = 1;
}
if (rightshift && jc_rightshiftlast && leftshiftpressed) {
    jc_earlywaiting = 2;
    jc_count = 1;
}
if (jc_earlywaiting) {
    if (jc_count > jc_cutoff) {
        jc_earlywaiting = 0;
    }
    else if ((jc_earlywaiting == 1 && leftshiftreleased) || (jc_earlywaiting == 2 && rightshiftreleased)) {
        jc_earlywaiting = false;
        jc_duration = jc_count;
        jc_show = true;
    }
}
// too early special case: release one shift and press the other on the same frame
if (leftshiftreleased && rightshiftpressed) || (rightshiftreleased && leftshiftpressed) {
    jc_earlywaiting = false;
    jc_duration = 1;
    jc_show = true;
}

var eitherjump = global.frameaction_jump || global.frameaction_djump;
if (eitherjump && global.frameaction_jumpslow) {
    jc_latewaiting = false;
    jc_earlywaiting = false;
    jc_duration = 0;
    jc_show = true;
    jc_successwaitingforrelease = true;
    jc_count = 0;
}

if (jc_successwaitingforrelease && global.frameaction_jumpslow && jc_count > 0) {
    jc_successduration = jc_count;
    jc_successwaitingforrelease = false;
}

jc_leftshiftlast = leftshift;
jc_rightshiftlast = rightshift;
