///Get good scrub
if self_invincible = false
{
    self_invincible = true;
    flash_total = 20;
    alarm[2] = 1;
    global.brato_health -= 1;
    hspeed = knockback_speed;
    self_moving = true;
    target_x = target_x - 160;
}

