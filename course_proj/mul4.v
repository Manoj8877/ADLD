`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.11.2022 23:59:09
// Design Name: 
// Module Name: mul4
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module mul4(output [7:0]s,
input [3:0]a,
input [3:0]b);

wire [15:0]q;
wire [3:0]n;
wire [5:0]m;
wire [3:0]o;
wire [5:0]temp2;
wire [5:0]temp1;
wire c1,c2,c3;

mul2 m1(q[3:0],a[1:0],b[1:0]);
mul2 m2(q[7:4],a[3:2],b[1:0]);
mul2 m3(q[11:8],a[1:0],b[3:2]);
mul2 m4(q[15:12],a[3:2],b[3:2]);

ripple_4bit r1(c1,n,q[11:8],q[7:4],1'b0);
ripple_6bit r2(c2,m,temp1,temp2,1'b0);
ripple_4bit r3(c3,o,q[15:12],m[5:2],1'b0);

assign temp1={1'b0,c1,n[3:0]};
assign temp2={4'b0000,q[3:2]};
assign s[1:0]=q[1:0];
assign s[3:2]=m[1:0];
assign s[7:4]=o[3:0]; 
endmodule
