///Yikes, that went deep
if other.image_index > 1
if self_invincible = false
{
    self_invincible = true;
    flash_total = 20;
    alarm[2] = 1;
    global.brato_health -= 1;
    hspeed = knockback_speed;
    self_moving = true;
    target_x = target_x - 160;
    keyboard_key_press(vk_up);
    alarm[3] = 1;
}

