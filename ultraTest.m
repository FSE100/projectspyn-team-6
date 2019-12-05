% Test sensors for precise measurements
while 1
distance = brick.UltrasonicDist(1);
display(distance);
 %brick.SetColorMode(2,4);
 rgb = brick.ColorRGB(2);
 display("Red: "+ rgb(1));
 display("Green: "+ rgb(2));
 display("Blue: "+ rgb(3));
 rgb = brick.ColorRGB(2);
 display(rgb);
 pause(1);
 if   rgb(1) < 25 && rgb(1) > 10
                    brick.beep;
                    
                
 end
end