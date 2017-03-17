library verilog;
use verilog.vl_types.all;
entity tpu is
    port(
        SYS_CLK         : in     vl_logic;
        addr            : in     vl_logic_vector(7 downto 0);
        data_in         : in     vl_logic_vector(7 downto 0);
        valid           : in     vl_logic;
        ready_out       : out    vl_logic;
        G_CLK_TX        : out    vl_logic;
        G_CLK_RX        : out    vl_logic;
        TPUINT          : out    vl_logic;
        data_out        : out    vl_logic_vector(7 downto 0)
    );
end tpu;
