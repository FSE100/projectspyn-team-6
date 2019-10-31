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
        case 's'
             start = false;
             break;
    end
 
end

CloseKeyboard();
