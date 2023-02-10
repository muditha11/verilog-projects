library verilog;
use verilog.vl_types.all;
entity votingMachine is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        mode            : in     vl_logic;
        button1         : in     vl_logic;
        button2         : in     vl_logic;
        button3         : in     vl_logic;
        button4         : in     vl_logic;
        led             : out    vl_logic_vector(7 downto 0)
    );
end votingMachine;
