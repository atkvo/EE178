# Constraints for CLK
set_property PACKAGE_PIN E3 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
create_clock -name external_clock -period 10.00 [get_ports clk]

# Constraints for AUD
set_property PACKAGE_PIN A11 [get_ports speaker]
set_property IOSTANDARD LVCMOS33 [get_ports speaker]

# Constraints for VCC
set_property PACKAGE_PIN D12 [get_ports vcc]
set_property IOSTANDARD LVCMOS33 [get_ports vcc]
