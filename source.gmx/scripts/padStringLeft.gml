// Pads a string to the left with a character until it is a certain length.

// padStringLeft(str,length,padchar)

var str = argument[0];
var length = argument[1];
var padchar = argument[2];

while (string_length(str) < length) {
    str = padchar + str;
}
return str;
