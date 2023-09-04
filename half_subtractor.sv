`timescale 1ns / 1ps


module half_subtractor(
    input logic a_i,
    input logic b_i,
    output logic d_o,
    output logic b_o
    );
    

assign d_o = a_i ^ b_i; 
assign b_o = ~a_i & b_i;

endmodule
