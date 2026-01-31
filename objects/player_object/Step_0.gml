var _left  = keyboard_check(vk_left)  || keyboard_check(ord("A"));
var _right = keyboard_check(vk_right) || keyboard_check(ord("D"));
var _up    = keyboard_check(vk_up)    || keyboard_check(ord("W"));
var _down  = keyboard_check(vk_down)  || keyboard_check(ord("S"));

var _hspd = _right - _left;
var _vspd = _down - _up;

if (_hspd != 0 || _vspd != 0)
{
	if (!self.doing_action)
	{
		player_set_move_sprite(self);
	}
	
    _dir = point_direction(0, 0, _hspd, _vspd);
    _xadd = lengthdir_x(player_speed, _dir);
    _yadd = lengthdir_y(player_speed, _dir);
	
	x += _xadd;
	if (place_meeting(x, y, wall_object))
	{
	    collision_with_wall_x(self, _xadd)
	}
	
	target = instance_place(x, y, rock_object)
	if (place_meeting(x, y, rock_object))
	{
		collision_with_rock_x(self, target, _xadd)
	}
	
	if (place_meeting(x, y, floor_gap_object))
	{
		collision_with_floor_gap_x(self, _xadd)
	}
	
	target = instance_place(x, y, breakable_wall_object)
	if (place_meeting(x, y, breakable_wall_object))
	{
	    collision_with_breakable_wall_x(self, target, _xadd)
	}
	
	y += _yadd;
	if (place_meeting(x, y, wall_object))
	{
	    collision_with_wall_y(self, _yadd)
	}
	
	target = instance_place(x, y, rock_object)
	if (place_meeting(x, y, rock_object))
	{
		collision_with_rock_y(self, target, _yadd)
	}
	
	if (place_meeting(x, y, floor_gap_object))
	{
		collision_with_floor_gap_y(self, _yadd)
	}
	
	target = instance_place(x, y, breakable_wall_object)
	if (place_meeting(x, y, breakable_wall_object))
	{
	    collision_with_breakable_wall_y(self, target, _yadd)
	}

}
else
{
	if (!self.doing_action)
	{
		player_set_idle_sprite(self)
	}
}