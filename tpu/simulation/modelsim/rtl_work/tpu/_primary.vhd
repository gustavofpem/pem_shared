library verilog;
use verilog.vl_types.all;
entity tpu is
    port(
        SYS_CLK         : in     vl_logic;
        addr_out        : in     vl_logic_vector(7 downto 0);
        data_out        : in     vl_logic_vector(7 downto 0);
        valid_out_m     : in     vl_logic;
        ready_out       : out    vl_logic;
        G_CLK_TX        : out    vl_logic;
        G_CLK_RX        : out    vl_logic;
        TPUINT          : out    vl_logic;
        RSTTPU          : in     vl_logic;
        TIMERINTMSK     : in     vl_logic;
        INTFLAG         : in     vl_logic;
        TXSLOT_EN       : in     vl_logic;
        RXSLOT_EN       : in     vl_logic;
        TX_SLOT         : in     vl_logic_vector(7 downto 0);
        RX_SLOT         : in     vl_logic_vector(7 downto 0);
        TIMER_INT_VALUE : in     vl_logic_vector(15 downto 0)
    );
end tpu;
