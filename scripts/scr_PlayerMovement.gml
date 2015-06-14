spd = argument0; //Player Speed
imgSpd = argument1; //image_speed

/*
Directions
Right = 1
Up = 2
Left = 3
Down = 4
*/

keyRight = ord('D');
keyUp = ord('W');
keyLeft = ord('A');
keyDown = ord('S');
keyAttack = vk_space;
keySprint = vk_shift;
keyWalk = vk_control;
if(global.canMove = true)
{
     //Sprint
     if (keyboard_check(keySprint))
         {
             spd = spd * 2;
             imgSpd = imgSpd * 2;
         }
     //Walk
     if(keyboard_check(keyWalk))
          {
               spd = spd / 2;
               imgSpd = imgSpd /2;
          }
     //Right
     if (keyboard_check(keyRight) || keyboard_check(vk_right))
         {
             motion_set(0, spd);
             sprite_index = spr_PlayerRight;
             image_speed = imgSpd;
             atkDir = 1;
         }
     //Up
     if (keyboard_check(keyUp) || keyboard_check(vk_up))
         {
             motion_set(90, spd);
             sprite_index = spr_PlayerUp;
             image_speed = imgSpd;
             atkDir = 2;
         }
     //Left
     if (keyboard_check(keyLeft) || keyboard_check(vk_left))
         {
             motion_set(180, spd);
             sprite_index = spr_PlayerLeft;
             image_speed = imgSpd;
             atkDir = 3;
         }
     //Down
     if (keyboard_check(keyDown) || keyboard_check(vk_down))
         {
             motion_set(270, spd);
             sprite_index = spr_PlayerDown;
             image_speed = imgSpd;
             atkDir = 4;
         }
     
     //Right + Up
     if ((keyboard_check(keyRight) || keyboard_check(vk_right)) && (keyboard_check(keyUp) || keyboard_check(vk_up)))
         {
             motion_set(45, spd);
             sprite_index = spr_PlayerRight;
             image_speed = imgSpd;
             atkDir = 1;
         }
     //Left + Up
     if ((keyboard_check(keyLeft) || keyboard_check(vk_left)) && (keyboard_check(keyUp) || keyboard_check(vk_up)))
         {
             motion_set(135, spd);
             sprite_index = spr_PlayerLeft;
             image_speed = imgSpd;
             atkDir = 3;
         }
     
     //Right & Down
     if ((keyboard_check(keyRight) || keyboard_check(vk_right)) && (keyboard_check(keyDown) || keyboard_check(vk_down)))
         {
             motion_set(315, spd);
             sprite_index = spr_PlayerRight;
             image_speed = imgSpd;
             atkDir = 1;
         }
         
     //Left & Down
     if ((keyboard_check(keyLeft) || keyboard_check(vk_left)) && (keyboard_check(keyDown) || keyboard_check(vk_down)))
         {
             motion_set(225, spd);
             sprite_index = spr_PlayerLeft;
             image_speed = imgSpd;
             atkDir = 3;
         }
     
     
     //Stop movement when key is releasedsa
     if !keyboard_check(keyRight)
     if !keyboard_check(vk_right)
     if !keyboard_check(keyUp)
     if !keyboard_check(vk_up)
     if !keyboard_check(keyLeft)
     if !keyboard_check(vk_left)
     if !keyboard_check(keyDown)
     if !keyboard_check(vk_down)
         {
             motion_set(direction, 0);
             if (sprite_index == spr_PlayerRight || sprite_index == spr_PlayerUp || sprite_index == spr_PlayerLeft || sprite_index == spr_PlayerDown)
               {
                    image_index = (0);
                    image_speed = 0;
               }
         }
     
     //Stop Attack Animation and reset attack animation to frame 0
     if (!keyboard_check(keyAttack))
          {
               
               if(image_index = (5))
               {
                    image_index = (0);
                    image_speed = 0;
               }
          }    
     //Attacking
     if (keyboard_check(keyAttack))
          {
                    
               if (atkDir == 1)
                    {
                         motion_set(direction, 0);
                         sprite_index = spr_PlayerAttackRight;
                         image_speed = imgSpd;
                    }
               if (atkDir == 2)
                    {
                         motion_set(direction, 0);
                         sprite_index = spr_PlayerAttackUp;
                         image_speed = imgSpd;
                    }
               if (atkDir == 3)
                    {
                         motion_set(direction, 0);
                         sprite_index = spr_PlayerAttackLeft;
                         image_speed = imgSpd;
                    }
               if(atkDir == 4)
                    {
                         motion_set(direction, 0);
                         sprite_index = spr_PlayerAttackDown;
                         image_speed = imgSpd;
                    }
          
          }
     }