function player_set_move_sprite(player){
	if (player.doing_action)
	{
		exit;
	}
	
	var mask = player.player_mask;
		
	switch (mask)
	{
		case 0:
			player.sprite_index = MainCharMove;
			break;
		case 1:
			player.sprite_index = MainBearMove;
			break;
		case 2:
			player.sprite_index = MainBirdMoveAction;
			break;
		case 3:
			break;
		case 4:
			player.sprite_index = MainBadgerMove;
			break;
		case 5:
			player.sprite_index = MainWolfMove;
			break;
	}
}

function player_set_idle_sprite(player){
	var mask = player.player_mask;
		
	switch (mask)
	{
		case 0:
			player.sprite_index = MainChar;
			break;
		case 1:
			player.sprite_index = MainBear;
			break;
		case 2:
			player.sprite_index = MainBird;
			break;
		case 3:
			player.sprite_index = MainFishStandMove
			break;
		case 4:
			player.sprite_index = MainBadger;
			break;
		case 5:
			player.sprite_index = MainWolf;
			break;
	}
}

function player_set_action_sprite(player){
	var mask = player.player_mask;
		
	switch (mask)
	{
		case 0:
			break;
		case 1:
			player.doing_action = true;
			player.sprite_index = MainBearAction;
			break;
		case 2:
			break;
		case 3:
			player.doing_action = true;
			player.sprite_index = MainFishAction;
			break;
		case 4:
			player.doing_action = true;
			player.sprite_index = MainBadgerAction;
			break;
		case 5:
			player.doing_action = true;
			player.sprite_index = MainWolfAction;
			break;
	}
}