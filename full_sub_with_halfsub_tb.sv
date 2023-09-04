
module full_sub_with_halfsub_tb();

logic a_i;
logic b_i;
logic brw_i;
logic dif_o;
logic brw_o;

integer i;

full_sub_with_halfsub FS(.*);

initial begin

for(i=0;i<8;i=i+1)
begin
{a_i,b_i,brw_i}=i;

#10;
end
end

initial
#80 $finish;

endmodule
