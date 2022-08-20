var posX = argument[0];
var posY = argument[1];

return padStringLeft(string(posX-32),3,"0")
     + padStringLeft(string(posY-32),3,"0");
