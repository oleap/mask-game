var player_to_follow = instance_nth_nearest(x, y, player_object, 1);

if (player_to_follow.player_mask != 5) {
	self.follow = false;
}

if (self.follow)
{
    if (instance_exists(player_to_follow))
    {
		var stop_dist = 96;
		var dir = point_direction(x, y, player_to_follow.x, player_to_follow.y);
		var dist = point_distance(x, y, player_to_follow.x, player_to_follow.y);
		
		if (dir > 90 && dir < 270)
		{
			self.image_xscale = -1;
		}
		else
		{
			self.image_xscale = 1;
		}

		
		if (dist > stop_dist)
        {
	        var _xadd = lengthdir_x(wolf_speed, dir);
			
			x += _xadd
			if (place_meeting(x, y, wall_object))
			{
			    wolf_collision_with_wall_x(self, _xadd)
			}
			
		    var _yadd = lengthdir_y(wolf_speed, dir);
			
			y += _yadd
			if (place_meeting(x, y, wall_object))
			{
			    wolf_collision_with_wall_y(self, _xadd)
			}
		}
	}
}