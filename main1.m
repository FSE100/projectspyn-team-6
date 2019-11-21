% brick = ConnectBrick('POE')
%function main(brick)
global key
InitKeyboard();
start = true;
        while 1
            pause(0.1);
            switch key 
                case 't'
                    while 1
                        brick.SetColorMode(2,2);
                        distance = brick.UltrasonicDist(1);
                        display(distance);
                        display(brick.ColorCode(2));
                        danger = 0;
                        if brick.ColorCode(2) == 4
                            brick.MoveMotor('C', -5);
                            pause(0.5);
                            brick.MoveMotor('AB', 20);
                            pause(0.6);
                        end            
                        if distance <= 30 
                            brick.StopMotor('AB');
                            brick.MoveMotor('A', -25);
                            brick.MoveMotor('B', 25);
                            pause(0.3);
                        end
                        if distance >= 30 
                            brick.MoveMotor('AB', 40);
                            pause(0.4);
                        end
                        if brick.ColorCode(2) == 2
                            brick.StopMotor('AB');
                            brick.MoveMotor('C', 8);
                            pause(0.5);
                            brick.StopMotor('C');
                        end
                         if brick.ColorCode(2) == 5
                            brick.StopMotor('AB');
                            pause(4);
                        end
   
                    end
                 case 'g'
                     while 1
                        brick.SetColorMode(2,2);
                        distance = brick.UltrasonicDist(1);
                        display(distance);
                        display(brick.ColorCode(2));
                        danger = 0;
                        % Yellow
                        if brick.ColorCode(2) == 4
                            brick.MoveMotor('C', 35);
                            pause(2);
                            brick.StopMotor('C', 35);
                            brick.MoveMotor('AB', 20);
                            pause(1);
                        end
                        % Green
                        if brick.ColorCode(2) == 3
                            sensorGreen();
                        end
                        % Blue
                        if brick.ColorCode(2) == 2
                            switch key
                        case 'w'
                            brick.MoveMotor('A', 10);
                            brick.MoveMotor('B', 10);
                            pause(0.5);
                         case 's'
                             brick.MoveMotor('A', -10);
                             brick.MoveMotor('B', -10);
                             pause(0.5);                 
                         case 'a'
                             brick.MoveMotor('A', -10);
                             brick.MoveMotor('B', 10);
                             pause(0.5);
                        case 'd'
                             brick.MoveMotor('A', 10);
                             brick.MoveMotor('B', -10);
                             pause(0.5);
                        case 'c'
                             brick.MoveMotor('C', 35);
                             pause(0.5);
                             brick.StopMotor('C');
                        case 'b' 
                            brick.StopMotor('AB');
                             break;
                            end
                        end          
                        if distance <= 30 
                            brick.StopMotor('AB');
                            brick.MoveMotor('A', -25);
                            brick.MoveMotor('B', 25);
                            pause(0.5);
                            brick.StopMotor('AB');
                        end
                        if distance >= 30 
                            brick.MoveMotor('AB', 40);
                            pause(0.3);
                          
                        end
                         if brick.ColorCode(2) == 5
                            brick.StopMotor('AB');
                            pause(4);
                        end
   
                    end
                 case 'b'
                     while 1
                        brick.SetColorMode(2,2);
                        distance = brick.UltrasonicDist(1);
                        display(distance);
                        display(brick.ColorCode(2));
                        danger = 0;
                     
                        brick.MoveMotor('C', -10);
                        pause(1);
                        if distance <= 40 && brick.ColorCode(2) == 7
                            brick.StopMotor('AB');
                            brick.MoveMotor('A', -10);
                            brick.MoveMotor('B', 10);
                            pause(0.5);
                        end
                        if distance >= 40 
                            brick.MoveMotor('AB', 50);
                            pause(1);
                        end
                        if brick.ColorCode(2) == 2
                            brick.StopMotor('AB');
                            brick.MoveMotor('C', 10);
                            brick.StopMotor('C');
                        end
                         if brick.ColorCode(2) == 5
                            brick.StopMotor('AB');
                            pause(1);
                        end
   
                    end
                 case 's' % Exit in case something goes wrong, probably will
                     start = false;
                     break;
            end
        end
        CloseKeyboard();
%end

        
 
