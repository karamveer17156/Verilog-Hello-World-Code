`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.10.2018 11:07:17
// Design Name: 
// Module Name: Top
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


module Top(
    input clk,
    output[7:0] cathode,
    output[3:0] anode
    );
    wire fclk;
    wire[3:0] ones, tens, hundreds, thousands;
    //clk_div
    clock c1(.inclk(clk), .out1(fclk));
    FSM fsm1(.clk(fclk),.ones(ones),.tens(tens),.hundreds(hundreds),.thousands(thousands));
    sevenseg_all segi(.clk(clk),.ones(ones),.tens(tens),.hundreds(hundreds),.thousands(thousands),.cathode(cathode),.anode(anode));
endmodule
