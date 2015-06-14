/////////////////////////////////////////////////////////////////////////////////////////////////////////
//Script Name: TDSMovement                                                                             //
//Created by: BleachFan a.k.a. Brian Rodriguez                                                         //
//Script write-out: TDSMovement(spd,reg,trn,rightbutton,upbutton,leftbutton,downbutton,friction,subimg)//
/////////////////////////////////////////////////////////////////////////////////////////////////////////
//Read below for information on the arguments.                                                         //
/////////////////////////////////////////////////////////////////////////////////////////////////////////

//Variables
spd=argument0;//Speed at which you move
reg=argument1;//If you're registered or not. 1/true=you are registered, 0/false=you aren't registered
trn=argument2;//Rate at which you turn If you're not registered, make sure that it's a factor of the subimages!
rightbutton=argument3;//Button you press to move to the right
upbutton=argument4;//Button you press to move up
leftbutton=argument5;//Button you press to move to the left
downbutton=argument6;// Button you press to move down
friction=argument7;//friction
subimg=argument8;//Amount of subimages(Make sure they're a factor of 360!)

//if you're not registered
if !(reg)
{
if keyboard_check(rightbutton){direction-=trn;}
if keyboard_check(leftbutton){direction+=trn;}
if keyboard_check(upbutton){motion_set(direction,spd);}
if keyboard_check(downbutton){motion_set(direction,-(spd/2));}

image_single=direction/trn;
}

//if you're registered
if(reg)
{
if keyboard_check(rightbutton){direction-=trn;}
if keyboard_check(leftbutton){direction+=trn;}
if keyboard_check(upbutton){motion_set(direction,spd);}
if keyboard_check(downbutton){motion_set(direction,-(spd/2));}

image_angle=direction;
}