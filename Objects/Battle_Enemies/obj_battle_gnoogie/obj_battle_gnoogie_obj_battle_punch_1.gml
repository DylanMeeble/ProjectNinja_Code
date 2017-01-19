enemy_health -= 1;
sprite_index = spr_battle_gnoogie_hit;
alarm[0] = 20;
flash_total = 4;
alarm[1] = 3;
with (obj_battle_punch)
{
    instance_destroy();
}
