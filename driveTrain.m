function driveTrain
    while 1
        if danger == 0
            forward();
        elseif danger == 1
            turnRight();
        end
    end
end

function turnRight()
    m2.setProperties('power', 10);
    pause(5);
end
function turnLeft()
    m1.setProperties('power', 10);
end
function forward()
    m1.setProperties('power', 10);
    m2.setProperties('power', 10);
end



