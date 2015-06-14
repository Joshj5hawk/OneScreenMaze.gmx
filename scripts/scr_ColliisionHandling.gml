var xmot, ymot;
x=xprevious;
y=yprevious;
for (i = 0; i < 90; i += argument1)
    {
    xmot = x + lengthdir_x(speed, direction + i);
    ymot = y + lengthdir_y(speed, direction + i);
    if !place_meeting(xmot, ymot,argument0) {x = xmot; y = ymot; exit;}
    xmot = x + lengthdir_x(speed, direction - i);
    ymot = y + lengthdir_y(speed, direction - i);
    if !place_meeting(xmot, ymot, argument0) {x = xmot; y = ymot; exit;}
    }