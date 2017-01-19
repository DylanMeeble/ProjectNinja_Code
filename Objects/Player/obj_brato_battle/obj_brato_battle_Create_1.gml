///Creation
image_speed = 1/6;
gamepad_set_axis_deadzone(0,0.4);

//Variables
starting_position = 710;
current_position = starting_position;
target_x = current_position;

movement_speed = 16;
jumping_speed = 30;
knockback_speed = -20;

self_moving = false;
self_jumping = false;
self_punching = false;
self_invincible = false;

floor_limit_left = 390;
floor_limit_right = 1030;

can_attack = true;
attack_cooldown = 15;
combo_cooldown = 30;
weapon_id = 0;
weapon_inv = ds_list_create();
brato_punch = "punch";
brato_sword = "sword";
brato_blaster = "blaster";
ds_list_add(weapon_inv,brato_punch,brato_sword,brato_blaster);

attack_animation = spr_brato_battle_punch1;
punch_counter = 1;
flash_total = 0;

gravity = 0;
