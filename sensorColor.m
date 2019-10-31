% Will only test color first 


function sensorColor()
    brick.SetColorMode(2,3);
    while true
         if key == 'g'
            greenSensor()
         end
         if key == 'y'
            yellowSensor()
         end
         if key == 'b'
            blueSensor()
         end
    end
end
function greenSensor()
    while brick.ColorCode(3) ~= 3
        m1.stop();
        m2.stop();
        liftDrop();
    end
end
function yellowSensor()
    while brick.ColorCode(3) ~= 4
        m1.stop();
        m2.stop();
        liftDrop();
    end
end
function blueSensor()
    while brick.ColorCode(3) ~= 2
        m1.stop();
        m2.stop();
        liftDrop();
    end
end




    
    