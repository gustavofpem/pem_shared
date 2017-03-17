library verilog;
use verilog.vl_types.all;
entity rf is
    generic(
        TPU_CONTROL_ADDR: vl_logic_vector(0 to 7) := (Hi0, Hi0, Hi1, Hi0, Hi0, Hi0, Hi0, Hi0);
        TX_SLOT_ADDR    : vl_logic_vector(0 to 7) := (Hi0, Hi0, Hi1, Hi0, Hi0, Hi0, Hi0, Hi1);
        RX_SLOT_ADDR    : vl_logic_vector(0 to 7) := (Hi0, Hi0, Hi1, Hi0, Hi0, Hi0, Hi1, Hi0);
        TPUINT_BYTE1_ADDR: vl_logic_vector(0 to 7) := (Hi0, Hi0, Hi1, Hi0, Hi0, Hi0, Hi1, Hi1);
        TPUINT_BYTE0_ADDR: vl_logic_vector(0 to 7) := (Hi0, Hi0, Hi1, Hi0, Hi0, Hi1, Hi0, Hi0)
    );
    port(
        SYS_CLK         : in     vl_logic;
        we_rf           : in     vl_logic;
        addr_rf         : in     vl_logic_vector(7 downto 0);
        data_rf         : in     vl_logic_vector(7 downto 0);
        TPUINT_RF       : in     vl_logic;
        TIME            : in     vl_logic;
        ready_rf        : out    vl_logic;
        RSTTPU          : out    vl_logic;
        TIMERINTMSK     : out    vl_logic;
        INTFLAG         : out    vl_logic;
        TXSLOT_EN       : out    vl_logic;
        RXSLOT_EN       : out    vl_logic;
        TX_SLOT         : out    vl_logic_vector(7 downto 0);
        RX_SLOT         : out    vl_logic_vector(7 downto 0);
        TIMER_INT_VALUE : out    vl_logic_vector(15 downto 0);
        data_out        : out    vl_logic_vector(7 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of TPU_CONTROL_ADDR : constant is 1;
    attribute mti_svvh_generic_type of TX_SLOT_ADDR : constant is 1;
    attribute mti_svvh_generic_type of RX_SLOT_ADDR : constant is 1;
    attribute mti_svvh_generic_type of TPUINT_BYTE1_ADDR : constant is 1;
    attribute mti_svvh_generic_type of TPUINT_BYTE0_ADDR : constant is 1;
end rf;
