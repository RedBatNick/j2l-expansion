/// splitDelimString(str,delim,num)

// Gets a particular substring in a delimited string.

var str = argument[0];
var delim = argument[1];
var num = argument[2];

var toReturn = "";
var sectionNum = 0;

for (var i = 1; i < string_length(str)+1; i+=1) 
{
    if (string_char_at(str,i) == delim) 
    {
        sectionNum += 1;
        i += 1;
    }
    if (sectionNum == num) {
        toReturn += string_char_at(str,i);
    }
}

return(toReturn);
