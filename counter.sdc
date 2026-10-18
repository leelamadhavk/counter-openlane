create_clock -name clk -period 20 [get_ports clk]
set_input_delay 2 -clock clk [get_ports rst]
set_output_delay 2 -clock clk [get_ports {count[*]}]
