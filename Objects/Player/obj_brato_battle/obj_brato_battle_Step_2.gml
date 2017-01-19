///Battle ATTACKS
key_attack = keyboard_check_pressed(ord('Z')) || gamepad_button_check_pressed(0,gp_face3);

//Select Punch
if (keyboard_check_pressed(ord('1')) && can_attack = true) weapon_id = 0;
//Select Sword
if (keyboard_check_pressed(ord('2')) && can_attack = true) weapon_id = 1;
//Select Blaster
if (keyboard_check_pressed(ord('3')) && can_attack = true) weapon_id = 2;

current_weapon = ds_list_find_value(weapon_inv,weapon_id);

//Start Attacking
if (key_attack && can_attack)
{
    switch (current_weapon)
    {
        case ("punch"):
            can_attack = false;
            punch_counter += 1;
            sprite_index = attack_animation;
            image_speed = 0;
            alarm[0] = attack_cooldown;
            alarm[1] = combo_cooldown;
            instance_create(x + 130, y, obj_battle_punch);
            break;
            
        case ("sword"):
            //can_attack = false;
            break;
            
        case ("blaster"):
            //can_attack = false;
            break;
    }
}

if punch_counter = 1 attack_animation = spr_brato_battle_punch1;
if punch_counter = 2 attack_animation = spr_brato_battle_punch2;
if punch_counter = 3 attack_animation = spr_brato_battle_punch3;

if punch_counter > 3 can_attack = false;
