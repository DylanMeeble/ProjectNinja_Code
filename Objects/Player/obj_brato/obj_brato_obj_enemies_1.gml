global.player_x = x + 100;
global.player_y = y;
global.fighting = true;
global.enemy = other.target_enemy;
global.target_battle_enemy_x = other.battle_x;
global.target_battle_enemy_y = other.battle_y;

with (obj_brato)
{
    instance_destroy();
}
room_goto(rm_battle);
