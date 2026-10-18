###############################################################################
# Created by write_sdc
###############################################################################
current_design counter
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name clk -period 10.0000 [get_ports {clk}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {rst}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {count[0]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {count[1]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {count[2]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {count[3]}]
###############################################################################
# Environment
###############################################################################
###############################################################################
# Design Rules
###############################################################################
