function driveTrain
    m1 = brick.motorA; % Right Motor
    m2 = brick.motorB; % Left Motor
    m1.start();
    m2.start();
    while 1
            forward();
    end
end

function turnRight()
m2.setProperties('power', 10);
end
function turnLeft()
m1.setProperties('power', 10);
end
function forward()
m1.setProperties('power', 10);
m2.setProperties('power', 10);
end



