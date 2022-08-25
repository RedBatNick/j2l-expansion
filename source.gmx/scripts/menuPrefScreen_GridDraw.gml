///menuPrefScreen_GridDraw()
if (!global.grid_sync) {
    switch (global.grid_draw) {
        case 0: global.grid_draw = 32; break;
        case 32: global.grid_draw = 16; break;
        case 16: global.grid_draw = 8; break;
        case 8: global.grid_draw = 4; break;
        case 4: global.grid_draw = 2; break;
        default: global.grid_draw = 32; break;
    }
} else {
    if (global.grid_draw != 0) 
        global.grid_draw = 0;
    else 
        global.grid_draw = oEdit.snap;
}

oDrawGrid.needToRedrawSurf = true;
saveConfig();
