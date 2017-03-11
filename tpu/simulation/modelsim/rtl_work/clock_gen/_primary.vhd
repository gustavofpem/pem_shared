library verilog;
use verilog.vl_types.all;
entity clock_gen is
    port(
        SYS_CLK         : in     vl_logic;
        TIME            : in     vl_logic_vector(6 downto 0);
        TX_SLOT         : in     vl_logic_vector(7 downto 0);
        RX_SLOT         : in     vl_logic_vector(7 downto 0);
        TXSLOT_EN       : in     vl_logic;
        RXSLOT_EN       : in     vl_logic;
        G_CLK_TX        : out    vl_logic;
        G_CLK_RX        : out    vl_logic
    );
end clock_gen;
