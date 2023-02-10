module ram(
    input [7:0] data_in,
    input [5:0] addr,
    input we,
    input clk,
    output [7:0] data_out
);

reg [7:0] RAM [63:0];
reg [5:0] addr_reg;

always @(posedge clk)
begin
    if (we)
        RAM[addr] <= data_in;
    else
        addr_reg = addr; 
end

assign data_out = ram[addr_reg];
endmodule