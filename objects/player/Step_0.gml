/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 329FD7BA
/// @DnDArgument : "code" "//Get inputs (1 = pressed, 0 = not pressed)$(13_10)key_right = keyboard_check(vk_right);$(13_10)key_left = keyboard_check(vk_left);$(13_10)key_jump = keyboard_check(vk_space);$(13_10)$(13_10)//Work out where to move horizontally$(13_10)hsp = (key_right - key_left) * hsp_walk;$(13_10)$(13_10)//Work out where to move vertically$(13_10)vsp = vsp + grv;$(13_10)$(13_10)//Work out if we should jump$(13_10)if (place_meeting(x,y+1,block_collision)) and (key_jump)$(13_10){$(13_10)    vsp = vsp_jump; $(13_10)}$(13_10)$(13_10)//Check for horizontal collisions and then move if we can$(13_10)var onepixel = sign(hsp) //moving left or right? right = 1, left = -1.$(13_10)if (place_meeting(x+hsp,y,block_collision))$(13_10){$(13_10)    //move as close as we can$(13_10)    while (!place_meeting(x+onepixel,y,block_collision))$(13_10)    {$(13_10)        x = x + onepixel;$(13_10)    }$(13_10)    hsp = 0;$(13_10)}$(13_10)x = x + hsp;$(13_10)$(13_10)//Check for vertical collisions and then move if we can$(13_10)var onepixel = sign(vsp) //up = -1, down = 1.$(13_10)if (place_meeting(x,y+vsp,block_collision))$(13_10){$(13_10)    //move as close as we can$(13_10)    while (!place_meeting(x,y+onepixel,block_collision))$(13_10)    {$(13_10)        y = y + onepixel;$(13_10)    }$(13_10)    vsp = 0;$(13_10)}$(13_10)y = y + vsp;"
//Get inputs (1 = pressed, 0 = not pressed)
key_right = keyboard_check(vk_right);
key_left = keyboard_check(vk_left);
key_jump = keyboard_check(vk_space);

//Work out where to move horizontally
hsp = (key_right - key_left) * hsp_walk;

//Work out where to move vertically
vsp = vsp + grv;

//Work out if we should jump
if (place_meeting(x,y+1,block_collision)) and (key_jump)
{
    vsp = vsp_jump; 
}

//Check for horizontal collisions and then move if we can
var onepixel = sign(hsp) //moving left or right? right = 1, left = -1.
if (place_meeting(x+hsp,y,block_collision))
{
    //move as close as we can
    while (!place_meeting(x+onepixel,y,block_collision))
    {
        x = x + onepixel;
    }
    hsp = 0;
}
x = x + hsp;

//Check for vertical collisions and then move if we can
var onepixel = sign(vsp) //up = -1, down = 1.
if (place_meeting(x,y+vsp,block_collision))
{
    //move as close as we can
    while (!place_meeting(x,y+onepixel,block_collision))
    {
        y = y + onepixel;
    }
    vsp = 0;
}
y = y + vsp;