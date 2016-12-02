library verilog;
use verilog.vl_types.all;
entity questao2 is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        sequencia       : out    vl_logic_vector(3 downto 0)
    );
end questao2;
