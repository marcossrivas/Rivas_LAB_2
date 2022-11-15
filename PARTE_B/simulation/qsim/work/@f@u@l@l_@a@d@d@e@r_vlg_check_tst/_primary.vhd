library verilog;
use verilog.vl_types.all;
entity FULL_ADDER_vlg_check_tst is
    port(
        cout            : in     vl_logic;
        z               : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end FULL_ADDER_vlg_check_tst;
