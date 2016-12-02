library verilog;
use verilog.vl_types.all;
entity questao5 is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        start           : in     vl_logic;
        HEX0            : out    vl_logic_vector(6 downto 0);
        HEX1            : out    vl_logic_vector(6 downto 0);
        HEX2            : out    vl_logic_vector(6 downto 0);
        HEX3            : out    vl_logic_vector(6 downto 0);
        milesimos       : out    vl_logic_vector(9 downto 0);
        horas           : out    vl_logic_vector(4 downto 0)
    );
end questao5;
