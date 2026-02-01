function collision_with_wall_x(player, _xadd){
	player.x -= _xadd;
}

function collision_with_wall_y(player, _yadd){
	player.y -= _yadd;
}

function wolf_collision_with_wall_x(wolf, _xadd){
	wolf.x -= _xadd;
}

function wolf_collision_with_wall_y(wolf, _yadd){
	wolf.y -= _yadd;
}

function collision_with_floor_gap_x(player, _xadd){
	if (player.player_mask != 2) {
		collision_with_wall_x(player, _xadd)
	}
}

function collision_with_floor_gap_y(player, _yadd){
	if (player.player_mask != 2) {
		collision_with_wall_y(player, _yadd)
	}
}

function collision_with_rock_x(player, rock, _xadd){
	collision_with_wall_x(player, _xadd)
	if (player.player_mask == 1)
		rock.x += _xadd;
		
		if (place_meeting(x, y, wall_object))
		|| (place_meeting(x, y, gate_object))
		|| (place_meeting(x, y, rock_object))
		{
			rock.x -= _xadd
		}
}

function collision_with_rock_y(player, rock, _yadd){
	collision_with_wall_y(player, _yadd)
	if (player.player_mask == 1)
		rock.y += _yadd;
}

function collision_with_breakable_wall_x(player, breakable_wall, _xadd){
	collision_with_wall_x(player, _xadd)
	if (player.player_mask == 4)
		instance_destroy(breakable_wall)
}

function collision_with_breakable_wall_y(player, breakable_wall, _yadd){
	collision_with_wall_y(player, _yadd)
	if (player.player_mask == 4)
		instance_destroy(breakable_wall)
}

function collision_with_ice_rock_x(player, ice_rock, _xadd, _hdir){
	collision_with_wall_x(player, _xadd)
	if (player.player_mask == 1)
		ice_rock.speed = 6;
		ice_rock.direction += _hdir;
}

function collision_with_ice_rock_y(player, ice_rock, _yadd, _vdir){
	collision_with_wall_y(player, _yadd)
	if (player.player_mask == 1)
		ice_rock.speed = 6;
		ice_rock.direction += _vdir
}