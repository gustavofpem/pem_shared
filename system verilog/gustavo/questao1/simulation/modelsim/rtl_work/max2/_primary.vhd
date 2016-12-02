library verilog;
use verilog.vl_types.all;
entity max2 is
    port(
        in0             : in     vl_logic_vector(3 downto 0);
        in1             : in     vl_logic_vector(3 downto 0);
        max             : out    vl_logic_vector(3 downto 0);
        min             : out    vl_logic_vector(3 downto 0)
    );
end max2;
