% Manual Script
global key
InitKeyboard();

                while 1
                    %liftUp();
                    pause(0.1); 
                    
                    switch key %,Tank Control
                        case 'w'
                            brick.MoveMotor('A', 30); 
                            brick.MoveMotor('B', 30);
                            pause(0.5);
                         case 's'
                             brick.MoveMotor('A', -30);
                             brick.MoveMotor('B', -30);
                             pause(0.5);                 
                         case 'a'
                             brick.MoveMotor('A', -30);
                             brick.MoveMotor('B', 30);
                             pause(0.5);
                        case 'd'
                             brick.MoveMotor('A', 30);
                             brick.MoveMotor('B', -30);
                             pause(0.5);
                        case 'o' % Open Clase
                            brick.MoveMotor('C', 35);
                            pause(5);
                            brick.StopMotor('C', 35);
                        case 'c' % Close Claw
                            brick.MoveMotor('C', -35);
                            pause(5);
                            brick.StopMotor('C', -35);
                        case 't'
                            brick.StopMotor('AB');


                        case 'b' % Exit manual control 
                            brick.StopMotor('AB');
                             break;
                    end
                end
                CloseKeyboard(); 