if global.savesubpixel {
    global.savePlayerX = oPlayer.x
    global.savePlayerY = oPlayer.y
} else {
    global.savePlayerX = floor(oPlayer.x)
    global.savePlayerY = floor(oPlayer.y)
}

with oPlayer {
    if not place_free(floor(x),y) global.savePlayerX += 1
    if not place_free(x,floor(y)) global.savePlayerY += 1
    if not place_free(floor(x),floor(y)) {
        global.savePlayerX += 1;
        global.savePlayerY += 1;
    } 
}
global.saveGrav = global.grav
global.savePlayerXScale = global.player_xscale
global.savePlayerAngle = global.playerAngle
