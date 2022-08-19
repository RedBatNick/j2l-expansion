select = 0;

xMargin = 120;
yStep = 40;

settingKey = false;
showResetPrompt = false;

//Add one for the "Reset controls" line
numberOfKeys = KEY.NUMBER + 1;

buttonName = scrControls("getKeyboardNameArray");
event_user(0);

//Make Reset controls the last option
buttonName[numberOfKeys - 1] = "Reset Controls";
bindName[numberOfKeys - 1] = "";

animationTime = 0;
