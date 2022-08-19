///cycleSkin(dir)
var skinCycleDir = argument[0];
var length = array_length_1d(global.skinList);

for (var i = 0; i < length; i+=1) {
    if (global.skinList[i] == global.skinName) {
        global.skinName = global.skinList[(i + length + skinCycleDir) % length];
        break;
    }
}

loadSkin(global.skinName);
saveConfig();
