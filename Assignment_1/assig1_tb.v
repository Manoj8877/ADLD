module assig1_tb;
reg front_sensor;
reg back_sensor;
reg [3:0]p;
wire green_light,red_light,car_detected,car_parked;

parking_system kl(front_sensor,back_sensor,p,green_light,red_light,car_detected,car_parked);

initial begin 
front_sensor=0;
back_sensor=0;
p=0;

#5
$display ("\n car_detected: %d \n green_light: %d \n red_light:%d \n car_parked: %d",car_detected,green_light,red_light,car_parked);

#20
front_sensor=1;
back_sensor=0;
p=0;
#5
$display ("\n car_detected: %d \n green_light: %d \n red_light:%d \n car_parked: %d",car_detected,green_light,red_light,car_parked);
#20

front_sensor=1;
back_sensor=0;
p=4'b0111;
#5
$display ("\n car_detected: %d \n green_light: %d \n red_light:%d \n car_parked: %d",car_detected,green_light,red_light,car_parked);

#20

front_sensor=1;
back_sensor=0;
p=4'b0110;
#5
$display ("\n car_detected: %d \n green_light: %d \n red_light:%d \n car_parked: %d",car_detected,green_light,red_light,car_parked);

#20
front_sensor=0;
back_sensor=1;
p=4'b0110;
#5
$display ("\n car_detected: %d \n green_light: %d \n red_light:%d \n car_parked: %d",car_detected,green_light,red_light,car_parked);

#20
front_sensor=0;
back_sensor=0;
p=4'b0000;
#5
$display ("\n car_detected: %d \n green_light: %d \n red_light:%d \n car_parked: %d",car_detected,green_light,red_light,car_parked);
end
endmodule


module parking_system(front_sensor,back_sensor,p,green_light,red_light,car_detected,car_parked);
input front_sensor;
input back_sensor;
input [3:0]p;
reg done=0;
output reg green_light,red_light,car_detected,car_parked;

always @(*)
begin
if(front_sensor==1)begin
car_detected <= #1 1'b1;
done <= #1 1'b0;
red_light <= #1 1'b1;
end
else
car_detected <= #1 1'b0;
end 

always @(*)
begin
if(car_detected==1)
if(p==4'b0110)begin
red_light <= #1 1'b0;
green_light <= #1 1'b1;

end
else
begin
red_light <= #1 1'b1;
green_light <= #1 1'b0;
end
end

always @(*)
begin
if(green_light)
if(back_sensor==1)begin
car_parked <= #1 1'b1;
car_detected <= #1 1'b0;
done <= #20 1'b1;
end
else
car_parked <= #1 1'b0;
end

always@(*)
begin
if(done)begin
green_light <= #1 1'b0;
red_light <= #1 1'b1;
car_parked <= #1 1'b0;
end
end
endmodule



