# Constraints for CLK
set_property PACKAGE_PIN E3 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
create_clock -period 10.000 -name external_clock [get_ports clk]
# Constraints for SW0
set_property PACKAGE_PIN U9 [get_ports {note[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {note[0]}]
# Constraints for SW1
set_property PACKAGE_PIN U8 [get_ports {note[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {note[1]}]
# Constraints for SW2
set_property PACKAGE_PIN R7 [get_ports {note[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {note[2]}]
# Constraints for SW3
set_property PACKAGE_PIN R6 [get_ports {note[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {note[3]}]
# Constraints for BTNU
set_property PACKAGE_PIN F15 [get_ports hush]
set_property IOSTANDARD LVCMOS33 [get_ports hush]
# Constraints for AUD
set_property PACKAGE_PIN A11 [get_ports speaker]
set_property IOSTANDARD LVCMOS33 [get_ports speaker]
# Constraints for VCC
set_property PACKAGE_PIN D12 [get_ports vcc]
set_property IOSTANDARD LVCMOS33 [get_ports vcc]


