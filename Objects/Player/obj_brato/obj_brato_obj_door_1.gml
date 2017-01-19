//Variables
global.canMove = false;
global.face_direction = other.enterDirection
speed = 0;
player_x = other.target_x;
player_y = other.target_y;

//Room Transition
if !instance_exists (obj_roomTransition)
{
    var tempRoomFade;
    tempRoomFade = instance_create(x,y,obj_roomTransition);
    tempRoomFade.tempTarget = other.targetRoom;
    obj_roomTransition.tempExitFace = other.exitDirection;
}

//Key Release (For animation & facing direction)
keyboard_key_release(vk_left);
keyboard_key_release(vk_right);
keyboard_key_release(vk_up);
keyboard_key_release(vk_down);
keyboard_key_release(ord('X'));
