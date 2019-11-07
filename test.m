%global danger;
%danger = 0;

% Initial Bluetooth Connection Command
% brick = ConnectBrick('POE')
% function test(brick)
%b = Brick('ioType','bt', 'btDevice', 'CardiganB', 'serPort', 'COM4');
%global danger;
function test(brick)
pause(1);
brick.MoveMotor('A', 100);
brick.MoveMotor('B', 100);
pause(1);
brick.StopMotor('A'); 
brick.StopMotor('B'); 
%driveTrain(brick, danger);
end
% function driveTrain(brick, danger)
%     while 1
%         if danger == 0
%             forward();
%         elseif danger == 1
%             turnRight();
%         end
%     end
% end
% function forward()
%     brick.MoveMotor('AB', 10);
% end
% function turnRight()
%     brick.MoveMotor('B', 10);
%     pause(5);
%     brick.StopMotor('B'); 
% end
% 
