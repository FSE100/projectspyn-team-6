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
            print("Good to go");
            closeClaw();
            pause(1)
            brick.MoveMotor('AB', 20);
            pause(1);
            while 1
                brick.SetColorMode(2,4);
                rgb = brick.ColorRGB(2);
                danger = brick.TouchPressed(3);
                distance = brick.UltrasonicDist(1);
                display(distance);
                display(danger);
                display(rgb);
                
                if rgb(1) == 15
                    brick.StopMotor('AB');
                       
                        mee();
   
                end
                % Blue
                if rgb(1) == 10
                    brick.StopMotor('AB');
    
    % = brick.ColorCode(3);
    %color = readColor(mycolorsensor)
    
    %if color==3         %green, search?

    %end
        InitKeyboard();
                while 1
                    %liftUp();
                    pause(0.1);
                    switch key
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
                        case 'o'
                            brick.MoveMotor('C', 35);
                            pause(5);
                            brick.StopMotor('C', 35);
                        case 'c'
                            brick.MoveMotor('C', -35);
                            pause(5);
                            brick.StopMotor('C', -35);


                        case 'b' 
                            brick.StopMotor('AB');
                             break;
                    end
                end
                CloseKeyboard();  
                end
                if distance < 20 && danger == 1
                    brick.StopMotor('AB');
                    pause(5);
                    brick.MoveMotor('A', 46);
                    brick.MoveMotor('B', 40);
                    pause(5);
                    brick.MoveMotor('A', -65);
                    brick.MoveMotor('B', 65);
                    pause(5);
                    brick.StopMotor('AB');
                    
                end
                if distance > 20 && danger == 1
                    brick.StopMotor('AB');
                    pause(5);
                    brick.MoveMotor('A', 46);
                    brick.MoveMotor('B', 40);
                    pause(5);
                    brick.MoveMotor('A', 65);
                    brick.MoveMotor('B', -65);
                    pause(5);
                    brick.StopMotor('AB');
                    
                    
                end
                if distance > 20 && danger == 0
                    brick.MoveMotor('A', 46);
                    brick.MoveMotor('B', 40);
                    pause(0.5);
                    brick.StopMotor('AB');
                    pause(0.5);
                end
                if distance < 20 && danger == 0
                    brick.StopMotor('AB');
                    brick.MoveMotor('A', 25);
                    brick.MoveMotor('B', -25);
                    pause(0.4);
                    brick.StopMotor('AB');
                end
                if rgb(1) == 87
                    brick.StopMotor('AB');
                    pause(4);
                end
                
            end
        case 's' % Exit in case something goes wrong, probably will
            start = false;
            break;
    end
end
CloseKeyboard();
%end


