# Constraints for CLK
set_property PACKAGE_PIN E3 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
create_clock -name external_clock -period 10.00 [get_ports clk]

# Constraints for SW0
set_property PACKAGE_PIN U9 [get_ports {switches[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {switches[0]}]

# Constraints for SW1
set_property PACKAGE_PIN U8 [get_ports {switches[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {switches[1]}]

# Constraints for SW2
set_property PACKAGE_PIN R7 [get_ports {switches[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {switches[2]}]

# Constraints for SW3
set_property PACKAGE_PIN R6 [get_ports {switches[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {switches[3]}]

# Constraints for SW4
set_property PACKAGE_PIN R5 [get_ports {switches[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {switches[4]}]

# Constraints for SW5
set_property PACKAGE_PIN V7 [get_ports {switches[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {switches[5]}]

# Constraints for SW6
set_property PACKAGE_PIN V6 [get_ports {switches[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {switches[6]}]

# Constraints for SW7
set_property PACKAGE_PIN V5 [get_ports {switches[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {switches[7]}]

# Constraints for SW8
set_property PACKAGE_PIN U4 [get_ports {switches[8]}]
set_property IOSTANDARD LVCMOS33 [get_ports {switches[8]}]

# Constraints for SW9
set_property PACKAGE_PIN V2 [get_ports {switches[9]}]
set_property IOSTANDARD LVCMOS33 [get_ports {switches[9]}]

# Constraints for SW10
set_property PACKAGE_PIN U2 [get_ports {switches[10]}]
set_property IOSTANDARD LVCMOS33 [get_ports {switches[10]}]

# Constraints for SW11
set_property PACKAGE_PIN T3 [get_ports {switches[11]}]
set_property IOSTANDARD LVCMOS33 [get_ports {switches[11]}]

# Constraints for SW12
set_property PACKAGE_PIN T1 [get_ports {switches[12]}]
set_property IOSTANDARD LVCMOS33 [get_ports {switches[12]}]

# Constraints for SW13
set_property PACKAGE_PIN R3 [get_ports {switches[13]}]
set_property IOSTANDARD LVCMOS33 [get_ports {switches[13]}]

# Constraints for SW14
set_property PACKAGE_PIN P3 [get_ports {switches[14]}]
set_property IOSTANDARD LVCMOS33 [get_ports {switches[14]}]

# Constraints for SW15
set_property PACKAGE_PIN P4 [get_ports {switches[15]}]
set_property IOSTANDARD LVCMOS33 [get_ports {switches[15]}]

# Constraints for LD0
set_property PACKAGE_PIN T8 [get_ports {leds[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {leds[0]}]

# Constraints for LD1
set_property PACKAGE_PIN V9 [get_ports {leds[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {leds[1]}]

# Constraints for LD2
set_property PACKAGE_PIN R8 [get_ports {leds[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {leds[2]}]

# Constraints for LD3
set_property PACKAGE_PIN T6 [get_ports {leds[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {leds[3]}]

# Constraints for LD4
set_property PACKAGE_PIN T5 [get_ports {leds[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {leds[4]}]

# Constraints for LD5
set_property PACKAGE_PIN T4 [get_ports {leds[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {leds[5]}]

# Constraints for LD6
set_property PACKAGE_PIN U7 [get_ports {leds[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {leds[6]}]

# Constraints for LD7
set_property PACKAGE_PIN U6 [get_ports {leds[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {leds[7]}]

# Constraints for LD8
set_property PACKAGE_PIN V4 [get_ports {leds[8]}]
set_property IOSTANDARD LVCMOS33 [get_ports {leds[8]}]

# Constraints for LD9
set_property PACKAGE_PIN U3 [get_ports {leds[9]}]
set_property IOSTANDARD LVCMOS33 [get_ports {leds[9]}]

# Constraints for LD10
set_property PACKAGE_PIN V1 [get_ports {leds[10]}]
set_property IOSTANDARD LVCMOS33 [get_ports {leds[10]}]

# Constraints for LD11
set_property PACKAGE_PIN R1 [get_ports {leds[11]}]
set_property IOSTANDARD LVCMOS33 [get_ports {leds[11]}]

# Constraints for LD12
set_property PACKAGE_PIN P5 [get_ports {leds[12]}]
set_property IOSTANDARD LVCMOS33 [get_ports {leds[12]}]

# Constraints for LD13
set_property PACKAGE_PIN U1 [get_ports {leds[13]}]
set_property IOSTANDARD LVCMOS33 [get_ports {leds[13]}]

# Constraints for LD14
set_property PACKAGE_PIN R2 [get_ports {leds[14]}]
set_property IOSTANDARD LVCMOS33 [get_ports {leds[14]}]

# Constraints for LD15
set_property PACKAGE_PIN P2 [get_ports {leds[15]}]
set_property IOSTANDARD LVCMOS33 [get_ports {leds[15]}]
