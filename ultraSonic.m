%global danger;
function ultraSonic()
    %danger = 0;
    distance = brick.UltrasonicDist(1);
    while 1
        if distance > 10
            danger = 0;
        else
            danger = 1;
        end
    end
end