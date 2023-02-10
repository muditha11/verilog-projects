library verilog;
use verilog.vl_types.all;
entity modeControl is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        mode            : in     vl_logic;
        valid_vote_casted: in     vl_logic;
        candidate1_vote : in     vl_logic_vector(7 downto 0);
        candidate2_vote : in     vl_logic_vector(7 downto 0);
        candidate3_vote : in     vl_logic_vector(7 downto 0);
        candidate4_vote : in     vl_logic_vector(7 downto 0);
        candidate1_button_press: in     vl_logic;
        candidate2_button_press: in     vl_logic;
        candidate3_button_press: in     vl_logic;
        candidate4_button_press: in     vl_logic;
        leds            : out    vl_logic_vector(7 downto 0)
    );
end modeControl;
