
    function sensorGreen()
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
                             brick.MoveMotor('C', -35);
                             pause(0.5);
                             brick.StopMotor('C');
                        case 'b' 
                            brick.StopMotor('AB');
                        end
    end