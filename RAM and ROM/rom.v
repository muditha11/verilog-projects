module rom(
    input clk,
    input en,
    input [3:0] addr,
    output reg [3:0] data
);

reg [3:0] mem [15:0];

always @(posedge clk)
begin
    if(en)
        data <= mem[addr]
    else
        data <= 4'bxxxx;
end

initial begin
    mem[0] = 4'b0000;
    mem[1] = 4'b0001;
    mem[2] = 4'b0010;
    mem[3] = 4'b0011;
end
endmodule