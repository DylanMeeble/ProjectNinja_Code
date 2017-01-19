fadeAlpha = clamp(fadeAlpha + (fadeState * fadeSpeed),0,1)
if (fadeAlpha == 1)
{
    room_goto(tempTarget);
    fadeState = -1;
}

if (fadeState == -1)
{
    global.face_direction = tempExitFace;
}

if (fadeAlpha == 0) && (fadeState == -1)
{
    global.canMove = true;
    instance_destroy();
}

draw_set_colour(c_black);
draw_set_alpha(fadeAlpha);
draw_rectangle(view_xview[0],view_yview[0],view_xview[0]+view_wview[0],view_yview[0]+view_hview[0],0);
draw_set_alpha(1);
