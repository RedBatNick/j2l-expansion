///scrControls(type)
//This script contains every hardcoded block of code you need to update in order to add a new configurable control key
var type = argument0;

enum KEY
{
    //Standard keys used in fangames
    LEFT,
    RIGHT,
    UP,
    DOWN,
    JUMP,
    SHOOT,
    RESTART,
    SKIP,
    SUICIDE,
    PAUSE,
    
    //Additional keys useful for other features
    ALIGN_LEFT,
    ALIGN_RIGHT,
    MOVE_PLACE,
    SAVE_PLACE,
    GRID_SNAP,
    ROOM_SPEED,
    H_ALIGN,
    V_ALIGN,
    NUDGE_LEFT,
    NUDGE_RIGHT,

    //Anything above this line is rebindable, anything below is not
    NUMBER,

    MENU_LEFT,
    MENU_RIGHT,
    MENU_UP,
    MENU_DOWN,
    MENU_ACCEPT,
    MENU_BACK,
    MENU_OPTIONS
}

switch(type)
{
    case "loadKeyboardConfig":
        //standard keys
        global.controls[KEY.LEFT, 0] =          FSIniReadReal("Keyboard",  "Left",          vk_left);
        global.controls[KEY.RIGHT, 0] =         FSIniReadReal("Keyboard",  "Right",         vk_right);
        global.controls[KEY.UP, 0] =            FSIniReadReal("Keyboard",  "Up",            vk_up);
        global.controls[KEY.DOWN, 0] =          FSIniReadReal("Keyboard",  "Down",          vk_down);
        global.controls[KEY.JUMP, 0] =          FSIniReadReal("Keyboard",  "Jump",          vk_shift);
        global.controls[KEY.SHOOT, 0] =         FSIniReadReal("Keyboard",  "Shoot",         ord('Z'));
        global.controls[KEY.RESTART, 0] =       FSIniReadReal("Keyboard",  "Restart",       ord('R'));
        global.controls[KEY.SKIP, 0] =          FSIniReadReal("Keyboard",  "Skip",          ord('S'));
        global.controls[KEY.SUICIDE, 0] =       FSIniReadReal("Keyboard",  "Suicide",       ord('Q'));
        global.controls[KEY.PAUSE, 0] =         FSIniReadReal("Keyboard",  "Pause",         ord('P'));
        
        //additional keys
        global.controls[KEY.ALIGN_LEFT, 0] =    FSIniReadReal("Keyboard",  "Align Left",    ord('A'));
        global.controls[KEY.ALIGN_RIGHT, 0] =   FSIniReadReal("Keyboard",  "Align Right",   ord('D'));
        global.controls[KEY.SAVE_PLACE, 0] =    FSIniReadReal("Keyboard",  "Save Place",    ord('S'));
        global.controls[KEY.MOVE_PLACE, 0] =    FSIniReadReal("Keyboard",  "Move Place",    ord('W'));
        global.controls[KEY.GRID_SNAP, 0] =     FSIniReadReal("Keyboard",  "Grid Snap",     ord('G'));
        global.controls[KEY.ROOM_SPEED, 0] =    FSIniReadReal("Keyboard",  "Room Speed",    ord('F'));
        global.controls[KEY.H_ALIGN, 0] =       FSIniReadReal("Keyboard",  "H Align",       ord('H'));
        global.controls[KEY.V_ALIGN, 0] =       FSIniReadReal("Keyboard",  "V Align",       ord('V'));
        global.controls[KEY.NUDGE_LEFT, 0] =    FSIniReadReal("Keyboard",  "Nudge Left",    ord('N'));
        global.controls[KEY.NUDGE_RIGHT, 0] =   FSIniReadReal("Keyboard",  "Nudge Right",   ord('M'));
        
        //menu keys
        global.controls[KEY.MENU_LEFT, 0] =     vk_left;
        global.controls[KEY.MENU_RIGHT, 0] =    vk_right;
        global.controls[KEY.MENU_UP, 0] =       vk_up;
        global.controls[KEY.MENU_DOWN, 0] =     vk_down;
        global.controls[KEY.MENU_ACCEPT, 0] =   vk_shift;
        global.controls[KEY.MENU_BACK, 0] =     ord('Z');
        global.controls[KEY.MENU_OPTIONS, 0] =  vk_enter;
        break; 
        
    case "loadControllerConfig":
        global.controllerIndex =                FSIniReadReal("Controller",  "Index",    -1); //-1 means no controller
        global.controls[KEY.LEFT, 1] =          FSIniReadReal("Controller",  "Left",     gp_padl);
        global.controls[KEY.RIGHT, 1] =         FSIniReadReal("Controller",  "Right",    gp_padr);
        global.controls[KEY.UP, 1] =            FSIniReadReal("Controller",  "Up",       gp_padu);
        global.controls[KEY.DOWN, 1] =          FSIniReadReal("Controller",  "Down",     gp_padd);
        global.controls[KEY.JUMP, 1] =          FSIniReadReal("Controller",  "Jump",     gp_face1);
        global.controls[KEY.SHOOT, 1] =         FSIniReadReal("Controller",  "Shoot",    gp_face3);
        global.controls[KEY.RESTART, 1] =       FSIniReadReal("Controller",  "Restart",  gp_face4);
        global.controls[KEY.SKIP, 1] =          FSIniReadReal("Controller",  "Skip",     gp_face2);
        global.controls[KEY.SUICIDE, 1] =       FSIniReadReal("Controller",  "Suicide",  gp_select);
        global.controls[KEY.PAUSE, 1] =         FSIniReadReal("Controller",  "Pause",    gp_start);
        global.controls[KEY.ALIGN_LEFT, 1] =    gp_shoulderl;
        global.controls[KEY.ALIGN_RIGHT, 1] =   gp_shoulderr;
        global.controls[KEY.ALIGN_LEFT, 1] =    ord('A');
        global.controls[KEY.ALIGN_RIGHT, 1] =   ord('D');
        global.controls[KEY.MENU_LEFT, 1] =     gp_padl;
        global.controls[KEY.MENU_RIGHT, 1] =    gp_padr;
        global.controls[KEY.MENU_UP, 1] =       gp_padu;
        global.controls[KEY.MENU_DOWN, 1] =     gp_padd;
        global.controls[KEY.MENU_ACCEPT, 1] =   gp_face1;
        global.controls[KEY.MENU_BACK, 1] =     gp_face2;
        global.controls[KEY.MENU_OPTIONS, 1] =  gp_select;
        break;
        
        
    case "saveKeyboardConfig":
        //standard keys
        ini_write_real("Keyboard",  "Left",          global.controls[KEY.LEFT, 0]);
        ini_write_real("Keyboard",  "Right",         global.controls[KEY.RIGHT, 0]);
        ini_write_real("Keyboard",  "Up",            global.controls[KEY.UP, 0]);
        ini_write_real("Keyboard",  "Down",          global.controls[KEY.DOWN, 0]);
        ini_write_real("Keyboard",  "Jump",          global.controls[KEY.JUMP, 0]);
        ini_write_real("Keyboard",  "Shoot",         global.controls[KEY.SHOOT, 0]);
        ini_write_real("Keyboard",  "Restart",       global.controls[KEY.RESTART, 0]);
        ini_write_real("Keyboard",  "Skip",          global.controls[KEY.SKIP, 0]);
        ini_write_real("Keyboard",  "Suicide",       global.controls[KEY.SUICIDE, 0]);
        ini_write_real("Keyboard",  "Pause",         global.controls[KEY.PAUSE, 0]);
        
        //additional keys
        ini_write_real("Keyboard",  "Align Left",    global.controls[KEY.ALIGN_LEFT, 0]);
        ini_write_real("Keyboard",  "Align Right",   global.controls[KEY.ALIGN_RIGHT, 0]);
        ini_write_real("Keyboard",  "Save Place",    global.controls[KEY.SAVE_PLACE, 0]);
        ini_write_real("Keyboard",  "Move Place",    global.controls[KEY.MOVE_PLACE, 0]);
        ini_write_real("Keyboard",  "Grid Snap",     global.controls[KEY.GRID_SNAP, 0]);
        ini_write_real("Keyboard",  "Room Speed",    global.controls[KEY.ROOM_SPEED, 0]);
        ini_write_real("Keyboard",  "H Align",       global.controls[KEY.H_ALIGN, 0]);
        ini_write_real("Keyboard",  "V Align",       global.controls[KEY.V_ALIGN, 0]);
        ini_write_real("Keyboard",  "Nudge Left",    global.controls[KEY.NUDGE_LEFT, 0]);
        ini_write_real("Keyboard",  "Nudge Right",   global.controls[KEY.NUDGE_RIGHT, 0]);
        break;
        
    case "saveControllerConfig":
        ini_write_real("Controller",  "Left",     global.controls[KEY.LEFT, 1]);
        ini_write_real("Controller",  "Right",    global.controls[KEY.RIGHT, 1]);
        ini_write_real("Controller",  "Up",       global.controls[KEY.UP, 1]);
        ini_write_real("Controller",  "Down",     global.controls[KEY.DOWN, 1]);
        ini_write_real("Controller",  "Jump",     global.controls[KEY.JUMP, 1]);
        ini_write_real("Controller",  "Shoot",    global.controls[KEY.SHOOT, 1]);
        ini_write_real("Controller",  "Restart",  global.controls[KEY.RESTART, 1]);
        ini_write_real("Controller",  "Skip",     global.controls[KEY.SKIP, 1]);
        ini_write_real("Controller",  "Suicide",  global.controls[KEY.SUICIDE, 1]);
        ini_write_real("Controller",  "Pause",    global.controls[KEY.PAUSE, 1]);
        break;
              
    case "getKeyboardNameArray":
        var buttonName;
        //standard key
        buttonName[0] = "Left Button";
        buttonName[1] = "Right Button";
        buttonName[2] = "Up Button";
        buttonName[3] = "Down Button";
        buttonName[4] = "Jump Button";
        buttonName[5] = "Shoot Button";
        buttonName[6] = "Restart Button";
        buttonName[7] = "Skip Button";
        buttonName[8] = "Suicide Button";
        buttonName[9] = "Pause Button";
        
        //additional key
        buttonName[10] = "Align Left Button";
        buttonName[11] = "Align Right Button";
        buttonName[12] = "Save Place Button";
        buttonName[13] = "Move Place Button";
        buttonName[14] = "Grid Snap Button";
        buttonName[15] = "Room Speed Button";
        buttonName[16] = "H Align Button";
        buttonName[17] = "V Align Button";
        buttonName[18] = "Nudge Left Button";
        buttonName[19] = "Nudge Right Button";
        return buttonName;
        
    case "getControllerNameArray":
        var buttonName;
        buttonName[0] = "Controller Index";
        buttonName[1] = "Left Button";
        buttonName[2] = "Right Button";
        buttonName[3] = "Up Button";
        buttonName[4] = "Down Button";
        buttonName[5] = "Jump Button";
        buttonName[6] = "Shoot Button";
        buttonName[7] = "Restart Button";
        buttonName[8] = "Skip Button";
        buttonName[9] = "Suicide Button";
        buttonName[10] = "Pause Button";
        return buttonName;
        
        
    case "setKeyboardDefault":
        //standard key
        global.controls[KEY.LEFT, 0] =    vk_left;
        global.controls[KEY.RIGHT, 0] =   vk_right;
        global.controls[KEY.UP, 0] =      vk_up;
        global.controls[KEY.DOWN, 0] =    vk_down;
        global.controls[KEY.JUMP, 0] =    vk_shift;
        global.controls[KEY.SHOOT, 0] =   ord('Z');
        global.controls[KEY.RESTART, 0] = ord('R');
        global.controls[KEY.SKIP, 0] =    ord('S');
        global.controls[KEY.SUICIDE, 0] = ord('Q');
        global.controls[KEY.PAUSE, 0] =   ord('P');
        
        //additional keys
        global.controls[KEY.ALIGN_LEFT, 0] =    ord('A');
        global.controls[KEY.ALIGN_RIGHT, 0] =   ord('D');
        global.controls[KEY.SAVE_PLACE, 0] =    ord('S');
        global.controls[KEY.MOVE_PLACE, 0] =    ord('W');
        global.controls[KEY.GRID_SNAP, 0] =     ord('G');
        global.controls[KEY.ROOM_SPEED, 0] =    ord('F');
        global.controls[KEY.H_ALIGN, 0] =       ord('H');
        global.controls[KEY.V_ALIGN, 0] =       ord('V');
        global.controls[KEY.NUDGE_LEFT, 0] =    ord('N');
        global.controls[KEY.NUDGE_RIGHT, 0] =   ord('M');
        break;
        
    case "setControllerDefault":
        global.controls[KEY.LEFT, 1] =    gp_padl;
        global.controls[KEY.RIGHT, 1] =   gp_padr;
        global.controls[KEY.UP, 1] =      gp_padu;
        global.controls[KEY.DOWN, 1] =    gp_padd;
        global.controls[KEY.JUMP, 1] =    gp_face1;
        global.controls[KEY.SHOOT, 1] =   gp_face3;
        global.controls[KEY.RESTART, 1] = gp_face4;
        global.controls[KEY.SKIP, 1] =    gp_face2;
        global.controls[KEY.SUICIDE, 1] = gp_select;
        global.controls[KEY.PAUSE, 1] =   gp_start;
        break;
}
