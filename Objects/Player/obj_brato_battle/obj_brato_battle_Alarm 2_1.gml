///Flashing
if flash_total > 0
{
    flash_total -= 1;
    if (visible == true) visible = false;
    else visible = true;
    alarm[2] = 3;
}

if flash_total = 0 && self_invincible = true
{
    self_invincible = false;
}
