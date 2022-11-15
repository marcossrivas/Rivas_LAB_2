library verilog;
use verilog.vl_types.all;
entity FULL_ADDER is
    port(
        a               : in     vl_logic;
        b               : in     vl_logic;
        cin             : in     vl_logic;
        clk             : in     vl_logic;
        z               : out    vl_logic;
        cout            : out    vl_logic
    );
end FULL_ADDER;
