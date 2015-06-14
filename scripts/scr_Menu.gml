switch (mpos)
{
     case 0: //Start game
          {
               room_goto_next();
               break;
          }
     case 1: //Load Game
          {
               if file_exists("save.sav")
               {
                    game_load("save.sav");
               }
               break;
          }
     case 2:
          {
               game_end();
               break;
          }
     default: break;
}