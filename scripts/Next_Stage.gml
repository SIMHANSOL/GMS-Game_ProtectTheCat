/// Next_Stage(world, stage);
var _world = argument0;
var _stage = argument1;

if global.select_stage != global.stage_num
{
    switch(_world)
    {
        case 0:
        {
            switch(_stage)
            {
                case 0:
                {
                    room_goto(Roo_World_1_Stage_2);
                    break;
                }
                
                case 1:
                {
                    room_goto(Roo_World_1_Stage_3);
                    break;
                }
                
                case 2:
                {
                    room_goto(Roo_World_1_Stage_4);
                    break;
                }
                
                case 3:
                {
                    room_goto(Roo_World_1_Stage_5);
                    break;
                }
                
                case 4:
                {
                    room_goto(Roo_World_1_Stage_6);
                    break;
                }
                
                case 5:
                {
                    room_goto(Roo_World_1_Stage_7);
                    break;
                }
                
                case 6:
                {
                    room_goto(Roo_World_1_Stage_8);
                    break;
                }
                
                case 7:
                {
                    room_goto(Roo_World_1_Stage_9);
                    break;
                }
                
                case 8:
                {
                    room_goto(Roo_World_1_Stage_10);
                    break;
                }
                
                case 9:
                {
                    global.select_world = 1;
                    global.select_stage = -1;
                    room_goto(Roo_World_2_Stage_1);
                    break;
                }
            }
        }
        
        case 1:
        {
            switch(_stage)
            {
                case 0:
                {
                    room_goto(Roo_World_2_Stage_2);
                    break;
                }
                
                case 1:
                {
                    room_goto(Roo_World_2_Stage_3);
                    break;
                }
                
                case 2:
                {
                    room_goto(Roo_World_2_Stage_4);
                    break;
                }
                
                case 3:
                {
                    room_goto(Roo_World_2_Stage_5);
                    break;
                }
                
                case 4:
                {
                    room_goto(Roo_World_2_Stage_6);
                    break;
                }
                
                case 5:
                {
                    room_goto(Roo_World_2_Stage_7);
                    break;
                }
                
                case 6:
                {
                    room_goto(Roo_World_2_Stage_8);
                    break;
                }
                
                case 7:
                {
                    room_goto(Roo_World_2_Stage_9);
                    break;
                }
                
                case 8:
                {
                    room_goto(Roo_World_2_Stage_10);
                    break;
                }
                
                case 9:
                {
                    global.select_world = 2;
                    global.select_stage = -1;
                    room_goto(Roo_World_3_Stage_1);
                    break;
                }
            }
        }
        
        case 2:
        {
            switch(_stage)
            {
                case 0:
                {
                    room_goto(Roo_World_3_Stage_2);
                    break;
                }
                
                case 1:
                {
                    room_goto(Roo_World_3_Stage_3);
                    break;
                }
                
                case 2:
                {
                    room_goto(Roo_World_3_Stage_4);
                    break;
                }
                
                case 3:
                {
                    room_goto(Roo_World_3_Stage_5);
                    break;
                }
                
                case 4:
                {
                    room_goto(Roo_World_3_Stage_6);
                    break;
                }
                
                case 5:
                {
                    room_goto(Roo_World_3_Stage_7);
                    break;
                }
                
                case 6:
                {
                    room_goto(Roo_World_3_Stage_8);
                    break;
                }
                
                case 7:
                {
                    room_goto(Roo_World_3_Stage_9);
                    break;
                }

                case 8:
                {
                    select = global.select_world; select_return = global.select_world;
                    main_ui_menu = 1; main_ui_menu_return = 1; room_goto(Roo_Main_Menu);
                    break;
                }
            }
        }
    }
    global.select_stage ++;
}
