/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//Script Name: Movement Script                                                                                     //
//Created by: BleachFan a.k.a. Brian Rodriguez                                                                     //
//Script write-out: NRMMovement(speed,rightbutton,upbutton,leftbutton,downbutton,gridsnap,gridsnapx,gridsnapy,diag)//
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//Read below for information on the arguments.                                                                     //
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

spd=argument0;//Speed at which you move(2 is reccommended for RPG style games)
rightbutton=argument1;//Button you press to move to the right
upbutton=argument2;//Button you press to move up
leftbutton=argument3;//Button you press to move to the left
downbutton=argument4;// Button you press to move down
gridsnap=argument5;//Make it 1 or true to use grid-based movement, 0 for free-movement
gridsnapx=argument6;//x position you want to be snapped
gridsnapy=argument7;//y position you want to be snapped
diag=argument8;//Make 1 or true for 8 direction movement, and 0 or true for 4 direction movement. Leave empty if you're using grid based
//movement

//The rest is pure code that makes you move. Feel free to modify!

//The following moves the object according to a grid
if (gridsnap)&&(place_snapped(gridsnapx,gridsnapy))
{
if keyboard_check(rightbutton){motion_set(0,spd);}
if keyboard_check(upbutton){motion_set(90,spd);}
if keyboard_check(leftbutton){motion_set(180,spd);}
if keyboard_check(downbutton){motion_set(270,spd);}

if !keyboard_check(rightbutton)
if !keyboard_check(upbutton)
if !keyboard_check(leftbutton)
if !keyboard_check(downbutton){motion_set(direction,0);}
}

//The following moves the object freely
else if !(gridsnap)
{
if keyboard_check(rightbutton){motion_set(0,spd);}
if keyboard_check(upbutton){motion_set(90,spd);}
if keyboard_check(leftbutton){motion_set(180,spd);}
if keyboard_check(downbutton){motion_set(270,spd);}
if(diag)
{
if keyboard_check(rightbutton) && keyboard_check(upbutton){motion_set(45,spd);}
if keyboard_check(upbutton) && keyboard_check(leftbutton){motion_set(135,spd);}
if keyboard_check(leftbutton) && keyboard_check(downbutton){motion_set(225,spd);}
if keyboard_check(downbutton) && keyboard_check(rightbutton){motion_set(315,spd);}
}
if !keyboard_check(rightbutton)
if !keyboard_check(upbutton)
if !keyboard_check(leftbutton)
if !keyboard_check(downbutton){motion_set(direction,0);}
}