library verilog;
use verilog.vl_types.all;
entity buttonControl is
    port(
        clock           : in     vl_logic;
        reset           : in     vl_logic;
        button          : in     vl_logic;
        valid_vote      : out    vl_logic
    );
end buttonControl;
