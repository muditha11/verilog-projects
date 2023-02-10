module VM(
    input clk,
    input rst,
    input [1:0] in,
    output reg out,
    output reg [1:0] change
);

parameter s0 = 2'b00;
parameter s1 = 2'b01;
parameter s2 = 2'b10;

reg[1:0] c_state,n_state;

always @(posedge clk)
begin
    if(rst==1)
    begin
        c_state=0;
        n_state=0;
        change = s0;
    end
    else
        c_state = n_state
    
    case (c_state)
        s0:
            if(in==s0)
            begin 
                n_state = s0;
                out = 0;
                change = s0;
            end 
            else if (in==s1)
            begin
                n_state = s1;
                out = 0;
                change = s0;
            end
            else if (in==s2)
            begin
                n_state = s2;
                out = 0;
                change = s0;
            end
        s1:
            if(in==s0)
            begin 
                n_state = s0;
                out = 0;
                change = s1;
            end 
            else if (in==s1)
            begin
                n_state = s2;
                out = 0;
                change = s0;
            end
            else if (in==s2)
            begin
                n_state = s0;
                out = 1;
                change = s0;
            end
        s2:
            if(in==s0)
            begin 
                n_state = s0;
                out = 0;
                change = s2;
            end 
            else if (in==s1)
            begin
                n_state = s0;
                out = 1;
                change = s0;
            end
            else if (in==s2)
            begin
                n_state = s0;
                out = 1;
                change = s1;
            end
    endcase
end 

endmodule