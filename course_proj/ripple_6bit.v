`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.11.2022 20:39:17
// Design Name: 
// Module Name: ripple_6bit
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

module ripple_6bit( output cout,[5:0]s,
input [5:0]a,input [5:0]b,
input cin
);
wire c0,c1,c2,c3,c4;

fa f1(c0,s[0],a[0],b[0],cin);
fa f2(c1,s[1],a[1],b[1],c0);
fa f3(c2,s[2],a[2],b[2],c1);
fa f4(c3,s[3],a[3],b[3],c2);
fa f5(c4,s[4],a[4],b[4],c3);
fa f6(cout,s[5],a[5],b[5],c4);
endmodule
