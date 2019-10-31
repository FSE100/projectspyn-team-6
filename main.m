% brick = ConnectBrick('CardiganB')
classdef main
    properties
    end
    methods(Static)
        function main1()
            global key
            InitKeyboard();
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
        end
        CloseKeyboard();
    end
end
 


