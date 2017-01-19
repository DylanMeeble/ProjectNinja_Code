///Get Hurt, Get good
with(obj_battle_enemy_melee)
{
    instance_destroy();
}

global.brato_health -= 1;

flash_total = 4;
alarm[2] = 3;

