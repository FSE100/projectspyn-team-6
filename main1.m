% brick = ConnectBrick('POE')
%function main(brick)
            global key
            InitKeyboard();
            start = true;
        while 1
            %liftUp();
            pause(0.1);
            switch key 
                case 't'
                    while 1
                    brick.SetColorMode(3,2);
                    distance = brick.UltrasonicDist(1);
                    display(distance);
                    danger = 0;
                        
                        brick.MoveMotor('AB', 20);
                        if distance <= 50
                            brick.StopMotor('AB');
                            brick.MoveMotor('A', -10);
                            brick.MoveMotor('B', 10);
                            pause(1.5);
                        end
                        if brick.ColorCode(3) ~= 3
                            brick.StopMotor('AB');
                        end
                        %else
                            %danger = 1;
                            %brick.StopMotor('AB');
                            %brick.MoveMotor('A', -10);
                            %brick.MoveMotor('B', 10);
                            %pause(2);
                            %brick.StopMotor('AB');
                        
                       
                    end
%                 case 'g'
%                     sensorColor();
%                     ultraSonic();
%                     driveTrain();
%                 case 'y'
%                     sensorColor();
%                     ultraSonic();
%                     driveTrain();
%                 case 'b'
%                     sensorColor();
%                     ultraSonic();
%                     driveTrain();
                 case 's' % Exit in case something goes wrong, probably will
                     start = false;
                     break;
            end
        end
        CloseKeyboard();
%end

        
 


