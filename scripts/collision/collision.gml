function collision_with_wall_x(player, _xadd){
	player.x -= _xadd;
}

function collision_with_wall_y(player, _yadd){
	player.y -= _yadd;
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