///FSIniReadReal(index, key, def)

var section = argument0;
var key = argument1;
var def = argument2;

var resultStr = ini_read_string( section, key, string( def ) );
return real( resultStr );
