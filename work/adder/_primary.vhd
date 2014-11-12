library verilog;
use verilog.vl_types.all;
entity adder is
    generic(
        n               : integer := 4
    );
    port(
        in1             : in     vl_logic_vector;
        in2             : in     vl_logic_vector;
        sum             : out    vl_logic_vector
    );
end adder;
