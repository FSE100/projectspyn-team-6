global danger;
function ultraSonic()
    danger = 1;
    distance = brick.UltrasonicDist(1);
    while 1
        if distance > 10
            danger = 1;
        else
            danger = 0;
        end
    end
end