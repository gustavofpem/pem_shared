library verilog;
use verilog.vl_types.all;
entity questao1 is
    port(
        in0             : in     vl_logic_vector(3 downto 0);
        in1             : in     vl_logic_vector(3 downto 0);
        in2             : in     vl_logic_vector(3 downto 0);
        in3             : in     vl_logic_vector(3 downto 0);
        max             : out    vl_logic_vector(3 downto 0);
        min             : out    vl_logic_vector(3 downto 0);
        med1            : out    vl_logic_vector(3 downto 0);
        med2            : out    vl_logic_vector(3 downto 0);
        HEX0            : out    vl_logic_vector(6 downto 0);
        HEX1            : out    vl_logic_vector(6 downto 0);
        HEX2            : out    vl_logic_vector(6 downto 0);
        HEX3            : out    vl_logic_vector(6 downto 0)
    );
end questao1;
