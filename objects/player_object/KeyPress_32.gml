if (self.player_mask == 3)
{
	var source = instance_nth_nearest(x, y, pond_object, 1);
	var dst = instance_nth_nearest(x, y, pond_object, 2);

	if (!instance_exists(source) || !instance_exists(dst))
	    exit;
	
	if (place_meeting(self.x, self.y, source))
	{
		player_set_action_sprite(self);
	    x = dst.x
		y = dst.y
	}
}
else if (self.player_mask == 5)
{
	var source = instance_nth_nearest(x, y, wolf_object, 1);
	var dst = instance_nth_nearest(x, y, wolf_object, 1);

	if (!instance_exists(source) || !instance_exists(dst))
	    exit;
		
	var x_range = 8;
	var x_close = abs(source.x - dst.x) <= x_range;
	var y_overlap = (source.bbox_bottom > dst.bbox_top) && (source.bbox_top < dst.bbox_bottom);

	if (x_close && y_overlap)
	{
		player_set_action_sprite(self);
		dst.follow = !dst.follow;
	}
}