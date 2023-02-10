library verilog;
use verilog.vl_types.all;
entity voteLogger is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        mode            : in     vl_logic;
        cand1_vote_valid: in     vl_logic;
        cand2_vote_valid: in     vl_logic;
        cand3_vote_valid: in     vl_logic;
        cand4_vote_valid: in     vl_logic;
        cand1_vote_recvd: out    vl_logic_vector(7 downto 0);
        cand2_vote_recvd: out    vl_logic_vector(7 downto 0);
        cand3_vote_recvd: out    vl_logic_vector(7 downto 0);
        cand4_vote_recvd: out    vl_logic_vector(7 downto 0)
    );
end voteLogger;
