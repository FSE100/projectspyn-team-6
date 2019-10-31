% Initial Bluetooth Connection Command
% brick = ConnectBrick('POE')
function test()
brick = ConnectBrick('POE');
brick.MoveMotor('A', 50);
pause(5); % pause the script for 5 second
brick.MoveMotor('B', 50);
pause(5); % pause the script for 5 second
brick.StopMotor('A'); 
brick.StopMotor('B'); 

end