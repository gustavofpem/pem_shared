library verilog;
use verilog.vl_types.all;
entity timer is
    port(
        SYS_CLK         : in     vl_logic;
        RSTTPU          : in     vl_logic;
        TIMERINTMSK     : in     vl_logic;
        INTFLAG         : in     vl_logic;
        TIMER_INT_VALUE : in     vl_logic_vector(15 downto 0);
        TPUINT          : out    vl_logic;
        TIME            : out    vl_logic_vector(6 downto 0)
    );
end timer;
