% Initial Bluetooth Connection Command
% brick = ConnectBrick('POE')
function test(brick)
%b = Brick('ioType','bt', 'btDevice', 'CardiganB', 'serPort', 'COM4');
pause(1);
brick.MoveMotor('A', 10);
brick.MoveMotor('B', 10);
pause(1);
brick.StopMotor('A'); 
brick.StopMotor('B'); 

end