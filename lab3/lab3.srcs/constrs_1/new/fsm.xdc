set_property PACKAGE_PIN E3 [get_ports clk]
set_property PACKAGE_PIN V17 [get_ports {state[1]}]
set_property PACKAGE_PIN U18 [get_ports {state[0]}]
set_property PACKAGE_PIN U1 [get_ports even]
set_property PACKAGE_PIN V2 [get_ports odd]
set_property PACKAGE_PIN A1 [get_ports pause]
set_property PACKAGE_PIN B1 [get_ports restart]
set_property PACKAGE_PIN A18 [get_ports rst]
set_property PACKAGE_PIN V1 [get_ports terminal]


create_clock -period 10.000 -name my_only_clock -waveform {0.000 5.000} [get_ports clk]
set_input_delay -clock [get_clocks my_only_clock] 5.000 [get_ports {pause restart}]
set_output_delay -clock [get_clocks my_only_clock] 5.000 [get_ports {even odd state[0] state[1] terminal}]
set_max_delay -from [get_ports {pause restart}] -to [get_ports terminal] 10.000
