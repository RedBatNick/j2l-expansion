// Converts an integer into a base 128 string.

var number = argument0

var base128string = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ!@$%^&*()-=[]\;,./_+{}|:<>?`~あえいうおかけきくこまめみもむがげぎごぐはへひほふさせしそすざぜじぞずな'
var result = ''

while number > 0 {
    var decimal = number/128
    number = floor(decimal)
    var pos = (decimal-number)*128
    result = string_char_at(base128string,pos+1) + result
}

return result
