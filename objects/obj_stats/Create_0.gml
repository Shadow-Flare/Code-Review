/// @description Init stats
max_spd = 8;
turn_speed = 0.3;
acc = 0.1;
turn_amount = 8;
player_max_hp = 100;

damage = 10;
bullet_speed = 16;
bullet_range = 1000;
fire_speed = 15;
level = 1;

//Here we would check if the save file for the user-set controls already exists, if we were actually doing that

#region Controls (default)
	player_keys = ds_map_create();
	#region Left Key
		var lkey = ds_list_create();
		lkey[| 0] = vk_left;
		lkey[| 1] = ord("A");
		ds_map_add_list(player_keys, "left", lkey);
	#endregion
	
	#region Right Key
		var rkey = ds_list_create();
		rkey[| 0] = vk_right;
		rkey[| 1] = ord("D");
		ds_map_add_list(player_keys, "right", rkey);
	#endregion
	
	#region Up Key
		var ukey = ds_list_create();
		ukey[| 0] = vk_up;
		ukey[| 1] = ord("W");
		ds_map_add_list(player_keys, "up", ukey);
	#endregion
		
	#region Down Key
		var dkey = ds_list_create();
		dkey[| 0] = vk_down;
		dkey[| 1] = ord("S");
		ds_map_add_list(player_keys, "down", dkey);
	#endregion
	
	#region Fire Key
		var fkey = ds_list_create();
		fkey[| 0] = vk_space;
		fkey[| 1] = ord("Z");
		ds_map_add_list(player_keys, "fire", fkey);
	#endregion
	
#endregion