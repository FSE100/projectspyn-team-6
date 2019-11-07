% brick = ConnectBrick('POE')
%function main(brick)
            global key
            InitKeyboard();
            start = true;
        while start == true
            %liftUp();
            switch key 
                case 't'
                    pause(1);
                    brick.MoveMotor('A', 100);
                    brick.MoveMotor('B', 100);
                    pause(1);
                    brick.StopMotor('A'); 
                    brick.StopMotor('B'); 
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

        
 


