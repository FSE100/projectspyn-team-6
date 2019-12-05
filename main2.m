% Main Matlab Program 2.0
global key
InitKeyboard();
start = true;
while 1
    pause(0.1);
    switch key
        % Debug Testing 
        case 't'
             CloseKeyboard(); % Exit keyboard to ensure bluetooth conneciton was established
            closeClaw();
            % Move straight from starting position for three seconds
            brick.MoveMotor('A', 51); % Left motor weaker than right, compensated by adding one 
            brick.MoveMotor('B', 50);
            pause(3);
            brick.StopMotor('AB');
            while 1
                brick.SetColorMode(2,4);
                rgb = brick.ColorRGB(2);
                danger = brick.TouchPressed(3);
                distance = brick.UltrasonicDist(1);
                display(distance);
                display(danger);
                display(rgb);
                pause(1);
                
                % Red
                if rgb(1) > 70 && rgb(1) < 92 && rgb(2) > 12 && rgb(2) < 28
                    brick.StopMotor('AB');
                    pause(5);
                end
                if distance < 45 && danger == 1
                    brick.StopMotor('AB');
                    pause(0.5);
                    brick.MoveMotor('A', -40.5);
                    brick.MoveMotor('B', -40);
                    pause(0.5);
                    brick.StopMotor('AB');
                    pause(0.47);
                    brick.MoveMotor('A', -50);
                    brick.MoveMotor('B', 50);
                    pause(0.42);
                    brick.StopMotor('AB');
                    
                end
                if distance > 45 && danger == 1
                    brick.StopMotor('AB');
                    pause(0.5);
                    brick.MoveMotor('A', -40.5);
                    brick.MoveMotor('B', -40);
                    pause(0.5);
                    brick.StopMotor('AB');
                    pause(0.47);
                    brick.MoveMotor('A', 50);
                    brick.MoveMotor('B', -50);
                    pause(0.51);
                    brick.StopMotor('AB');
                    brick.StopMotor('AB');
                    %pause(1.5);
                    brick.MoveMotor('A', 41);
                    brick.MoveMotor('B', 40);
                    pause(4.5);
                    brick.StopMotor('AB');
                    pause(0.5);
                    
                    
                    
                end
                
                if distance > 85 && danger == 0
                    brick.StopMotor('AB');
                    pause(0.5);
                    brick.StopMotor('AB');
                    pause(0.47);
                    brick.MoveMotor('A', 50);
                    brick.MoveMotor('B', -50);
                    pause(0.49);
                    brick.StopMotor('AB');
                    brick.MoveMotor('A', 51);
                    brick.MoveMotor('B', 50);
                    pause(4);
                    brick.StopMotor('AB');
                    
                    
                end
                if distance < 85 && danger == 0
                    brick.StopMotor('AB');
                    %pause(1.5)  
                   
                    

                    brick.MoveMotor('A', 51);
                    brick.MoveMotor('B', 50);
                    pause(1.5);    
                    brick.StopMotor('AB');
                    pause(0.5);
                    
                    
                end
                % Green
                if   10 < rgb(3) && rgb(3) < 29 && rgb(1) > 5 && rgb(1) < 15
                    brick.StopMotor('AB');
                    manual();
                end
                % Blue
                if  31 < rgb(3) && rgb(3) < 80 && rgb(1) > 10 && rgb(1) < 25
                    brick.StopMotor('AB');
                    manual();
                
                end
                
            end
        % Live Program
        case 'g'
            CloseKeyboard(); % Exit keyboard to ensure bluetooth conneciton was established
            closeClaw();
            % Move straight from starting position for three seconds
            brick.MoveMotor('A', 51); % Left motor weaker than right, compensated by adding one 
            brick.MoveMotor('B', 50);
            pause(3);
            brick.StopMotor('AB');
            while 1
                brick.SetColorMode(2,4);
                rgb = brick.ColorRGB(2);
                danger = brick.TouchPressed(3);
                distance = brick.UltrasonicDist(1);
                pause(1);
                
                % Red
                if rgb(1) > 70 && rgb(1) < 92 && rgb(2) > 12 && rgb(2) < 28
                    brick.StopMotor('AB');
                    pause(5);
                end
                
                % Turn Left if touch sensor is pushed and right wall is
                % within 45 units
                if distance < 45 && danger == 1
                    brick.StopMotor('AB');
                    %pause(0.5);
                    brick.MoveMotor('A', -40.5);
                    brick.MoveMotor('B', -40);
                    pause(0.5);
                    brick.StopMotor('AB');
                    pause(0.5);
                    brick.MoveMotor('A', -50);
                    brick.MoveMotor('B', 50);
                    pause(0.47);
                    brick.StopMotor('AB');
                    
                end
                % Turn Right if touch sensor is pushed and right wall is
                % not within 45 units
                if distance > 45 && danger == 1
                    brick.StopMotor('AB');
                    %pause(0.5);
                    brick.MoveMotor('A', -40.5); % Move backwards for .5 seconds
                    brick.MoveMotor('B', -40);
                    pause(0.5);
                    brick.StopMotor('AB');
                    pause(0.5);
                    brick.MoveMotor('A', 50); 
                    brick.MoveMotor('B', -50);
                    pause(0.49);
                    brick.StopMotor('AB');
                    brick.StopMotor('AB');
                    brick.MoveMotor('A', 41); % Move forward for 3.5 seconds
                    brick.MoveMotor('B', 40);
                    pause(3.5);
                    brick.StopMotor('AB');
    
                end
                
                %If right wall is over 85 units and touch sensor is not
                %triggered
                if distance > 85 && danger == 0
                    brick.StopMotor('AB');
                    pause(0.5);
                    brick.MoveMotor('A', 50); % Turn right for .49 seconds
                    brick.MoveMotor('B', -50); 
                    pause(0.49);
                    brick.StopMotor('AB');
                    brick.MoveMotor('A', 51); % Move forward for four seconds
                    brick.MoveMotor('B', 50);
                    pause(4);
                    brick.StopMotor('AB');
                    
                    
                end
                %If right wall is within 85 units and touch sensor is not
                %triggered
                if distance < 85 && danger == 0
                    brick.StopMotor('AB');
                    pause(0.5);
                    brick.MoveMotor('A', 51); % Move Forward for 1.5 seconds
                    brick.MoveMotor('B', 50);
                    pause(1.5);    
                    brick.StopMotor('AB');
                    pause(0.5);
                    
                    
                end
                % Green Floor
                if   10 < rgb(3) && rgb(3) < 29 && rgb(1) > 5 && rgb(1) < 15 
                    %RGB values gathered by testing of Color sensor in
                    %trials
                    brick.StopMotor('AB');
                    manual();
                end
                % Blue Floor
                if  31 < rgb(3) && rgb(3) < 80 && rgb(1) > 10 && rgb(1) < 25
                    brick.StopMotor('AB');
                    manual();
                
                end
                
            end
        case 's' % Exit in case something goes wrong, probably will
            start = false;
            break;
    end
end
CloseKeyboard();
%end


