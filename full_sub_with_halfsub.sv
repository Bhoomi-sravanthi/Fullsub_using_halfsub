`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/24/2023 04:24:01 PM
// Design Name: 
// Module Name: full_sub_with_halfsub
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


module full_sub_with_halfsub(a_i,b_i,brw_i,dif_o,brw_o);

input logic a_i,b_i,brw_i; 
output logic dif_o,brw_o; 

wire w1,w2,w3; 

half_subtractor  hs1  (.a_i(a_i),.b_i(b_i),.d_o(w1),.b_o(w2));

half_subtractor  hs2  (.a_i(w1),.b_i(brw_i),.d_o(dif_o),.b_o(w3));

xor xr1(brw_o,w2,w3);

endmodule

