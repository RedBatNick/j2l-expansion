for (var i = 0; i < argument[4]; i += 1)
    instance_create(lerp(argument[0], argument[2], ((1 / argument[4]) * i)), lerp(argument[1], argument[3], ((1 / argument[4]) * i)), argument[5]);
