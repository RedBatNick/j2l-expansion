///skinnableDefault(sprite)
var sprite = argument[0];
var duplicate = sprite_duplicate(sprite);
sprite_collision_mask(duplicate, true, 0, sprite_get_bbox_left(sprite), sprite_get_bbox_top(sprite), sprite_get_bbox_right(sprite), sprite_get_bbox_bottom(sprite), 0, 0);
return duplicate;
