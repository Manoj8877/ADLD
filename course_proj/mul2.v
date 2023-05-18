`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.11.2022 12:15:25
// Design Name: 
// Module Name: mul2
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


module mul2(output [3:0]s,
            input [1:0]a,
            input [1:0]b
            );
wire c1,s1,s2,s3;
and a1(s[0],a[0],b[0]);
and a2(s1,a[1],b[0]);
and a3(s2,a[0],b[1]);
ha ha1(c1,s[1],s1,s2);

and a4(s3,a[1],b[1]);

ha ha2(s[3],s[2],c1,s3);

endmodule
