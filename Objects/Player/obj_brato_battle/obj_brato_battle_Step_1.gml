///BattleMovement

key_right = keyboard_check(vk_right) || gamepad_axis_value(0,gp_axislh) > 0 || gamepad_button_check(0,gp_padr);
key_left = keyboard_check(vk_left) || gamepad_axis_value(0,gp_axislh) < 0 || gamepad_button_check(0,gp_padl);
key_jump = keyboard_check(vk_up) || keyboard_check(vk_space) || gamepad_button_check(0,gp_face1);



if key_left && !key_right
if x > floor_limit_left
if self_moving = false
if can_attack = true
{
    if target_x = current_position
    if current_position > floor_limit_left
    {
        target_x = current_position - 160;
    }
    image_speed = 0.4;
    hspeed = -movement_speed;
    self_moving = true;
    sprite_index = spr_brato_battle_left;
        if x = target_x
        {
            current_position = x;
            if current_position > floor_limit_left
            {
            target_x = current_position - 160;
            }
        }
}

if key_right && !key_left
if x < floor_limit_right
if self_moving = false
if can_attack = true
{
    if target_x = current_position
    if current_position < floor_limit_right
    {
        target_x = current_position + 160;
    }
    hspeed = movement_speed;
    image_speed = 0.4;
    self_moving = true;
    sprite_index = spr_brato_battle_right;
        if x = target_x
        {
            current_position = x;
            if current_position < floor_limit_right
            {
            target_x = current_position + 160;
            }
        }
}

if key_jump
if self_jumping = false
if can_attack = true
{
  vspeed -= jumping_speed;
  image_speed = 0;
  gravity = 2;
  self_jumping = true;
}
if (self_jumping = true && can_attack = true) sprite_index = spr_brato_battle_jump
if vspeed < 0 image_index = 0
if vspeed > 0 image_index = 1

//Stop/Restrict Movement

if x = target_x
if can_attack = true
//if self_jumping = false
{
    hspeed = 0;
    image_speed = 1/6;
    self_moving = false;
    current_position = x;
    
    if self_jumping = false
    //if !key_right
    //if !key_left
    {
        sprite_index = spr_brato_battle_idle;
    }
}

if (target_x = floor_limit_left || target_x = floor_limit_right)
if (x = floor_limit_left || x = floor_limit_right)
{
    hspeed = 0;
    self_moving = false;
}

if x > (target_x + 160)
{
    hspeed = 0;
    self_moving = false;
    x = target_x + 160;
    current_position = x;
    target_x = current_position;
}
if x < (target_x - 160)
{
    hspeed = 0;
    self_moving = false;
    x = target_x - 160;
    current_position = x;
    target_x = current_position;
}

if (self_jumping == false && sprite_index == spr_brato_battle_jump)
{
  sprite_index = spr_brato_battle_idle;
  image_speed = 1/6;
}
