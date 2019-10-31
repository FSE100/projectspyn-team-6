global key
InitKeyboard();
brick = ConnectBrick('POE');

start = true;

while start == true
    liftUp();
    switch key 
        case 't'
             test();
        case 'g'
             sensorColor();
             ultraSonic();
             driveTrain();
        case 'y'
             sensorColor();
             ultraSonic();
             driveTrain();
        case 'b'
             sensorColor();
             ultraSonic();
             driveTrain();
        case 's' % Exit in case something goes wrong, probably will
             start = false;
             break;
    end
 
end

CloseKeyboard();
