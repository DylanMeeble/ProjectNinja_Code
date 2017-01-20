///Brato Controls
walk_speed = 4;
run_speed = 6;
depth = -y;

key_right = keyboard_check(vk_right) || gamepad_axis_value(0,gp_axislh) > 0 || gamepad_button_check(0,gp_padr);
key_left = keyboard_check(vk_left) || gamepad_axis_value(0,gp_axislh) < 0 || gamepad_button_check(0,gp_padl);
key_down = keyboard_check(vk_down)  || gamepad_axis_value(0,gp_axislv) > 0 || gamepad_button_check(0,gp_padd);
key_up = keyboard_check(vk_up)  || gamepad_axis_value(0,gp_axislv) < 0 || gamepad_button_check(0,gp_padu);
key_action1 = keyboard_check(ord('X')) || gamepad_button_check(0,gp_face1);
key_action2 = keyboard_check(ord('Z')) || gamepad_button_check(0,gp_face3);

//Input check
x_direction = key_right - key_left;
y_direction = key_down - key_up;

//Move
if (global.canMove == true)
if !key_action2
{
hspeed = x_direction * walk_speed;
vspeed = y_direction * walk_speed;
}

if (global.canMove == true)
if key_action2
{
hspeed = x_direction * run_speed;
vspeed = y_direction * run_speed;
}

if speed > walk_speed
if !key_action2
{
    speed = walk_speed;
}
else if speed > walk_speed
if key_action2
{
    speed = run_speed;
}

//Animation changes

if (vspeed > 0 && hspeed = 0 && speed < run_speed)
{
    sprite_index = spr_brato_down_w;
    global.face_direction = 270;
}
else if (hspeed < 0 && vspeed = 0 && speed < run_speed)
{
    sprite_index = spr_brato_left_w;
    global.face_direction = 180;
}
else if (vspeed < 0 && hspeed = 0 && speed < run_speed)
{
    sprite_index = spr_brato_up_w;
    global.face_direction = 90;
}
else if (hspeed > 0 && vspeed = 0 && speed < run_speed)
{
    sprite_index = spr_brato_right_w;
    global.face_direction = 0;
}
else if (vspeed > 0 && hspeed < 0 && speed < run_speed)
{
    sprite_index = spr_brato_dl_w;
    global.face_direction = 225;
}
else if (vspeed > 0 && hspeed > 0 && speed < run_speed)
{
    sprite_index = spr_brato_dr_w;
    global.face_direction = 315;
}
else if (vspeed > 0 && hspeed = 0 && speed = run_speed)
{
    sprite_index = spr_brato_down_r;
    global.face_direction = 270;
}
else if (hspeed < 0 && vspeed = 0 && speed = run_speed)
{
    sprite_index = spr_brato_left_r;
    global.face_direction = 180;
}
else if (vspeed < 0 && hspeed = 0 && speed = run_speed)
{
    sprite_index = spr_brato_up_r;
    global.face_direction = 90;
}
else if (hspeed > 0 && vspeed = 0 && speed = run_speed)
{
    sprite_index = spr_brato_right_r;
    global.face_direction = 0;
}
else if (vspeed > 0 && hspeed < 0 && speed = run_speed)
{
    sprite_index = spr_brato_dl_w;
    global.face_direction = 225;
}
else if (vspeed > 0 && hspeed > 0 && speed = run_speed)
{
    sprite_index = spr_brato_dr_w;
    global.face_direction = 315;
}
