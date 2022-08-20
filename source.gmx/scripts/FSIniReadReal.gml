///FSIniReadReal(index, key, def)

var section = argument[0];
var key = argument[1];
var def = argument[2];

var resultStr = ini_read_string(section, key, string(def));
return real(resultStr);
