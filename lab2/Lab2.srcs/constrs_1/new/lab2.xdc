# Constraints for CLK
set_property PACKAGE_PIN E3 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
create_clock -name external_clock -period 10.00 [get_ports clk]

# Constraints for SW0
set_property PACKAGE_PIN U9 [get_ports {val0[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {val0[0]}]
# Constraints for SW1
set_property PACKAGE_PIN U8 [get_ports {val0[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {val0[1]}]
# Constraints for SW2
set_property PACKAGE_PIN R7 [get_ports {val0[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {val0[2]}]
# Constraints for SW3
set_property PACKAGE_PIN R6 [get_ports {val0[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {val0[3]}]
# Constraints for BTNU
set_property PACKAGE_PIN F15 [get_ports {dp_button[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dp_button[0]}]


# Constraints for SW4
set_property PACKAGE_PIN R5 [get_ports {val1[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {val1[0]}]
# Constraints for SW5
set_property PACKAGE_PIN V7 [get_ports {val1[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {val1[1]}]
# Constraints for SW6
set_property PACKAGE_PIN V6 [get_ports {val1[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {val1[2]}]
# Constraints for SW7
set_property PACKAGE_PIN V5 [get_ports {val1[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {val1[3]}]
# Constraints for BTNR
set_property PACKAGE_PIN R10 [get_ports {dp_button[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dp_button[1]}]


# Constraints for SW8
set_property PACKAGE_PIN U4 [get_ports {val2[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {val2[0]}]
# Constraints for SW9
set_property PACKAGE_PIN V2 [get_ports {val2[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {val2[1]}]
# Constraints for SW10
set_property PACKAGE_PIN U2 [get_ports {val2[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {val2[2]}]
# Constraints for SW11
set_property PACKAGE_PIN T3 [get_ports {val2[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {val2[3]}]
# Constraints for BTND
set_property PACKAGE_PIN V10 [get_ports {dp_button[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dp_button[2]}]

# Constraints for SW12
set_property PACKAGE_PIN T1 [get_ports {val3[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {val3[0]}]
# Constraints for SW13
set_property PACKAGE_PIN R3 [get_ports {val3[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {val3[1]}]
# Constraints for SW14
set_property PACKAGE_PIN P3 [get_ports {val3[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {val3[2]}]
# Constraints for SW15
set_property PACKAGE_PIN P4 [get_ports {val3[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {val3[3]}]
# Constraints for BTNL
set_property PACKAGE_PIN T16 [get_ports {dp_button[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dp_button[3]}]


# Constraints for AN0
set_property PACKAGE_PIN N6 [get_ports {an[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {an[0]}]
# Constraints for AN1
set_property PACKAGE_PIN M6 [get_ports {an[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {an[1]}]
# Constraints for AN2
set_property PACKAGE_PIN M3 [get_ports {an[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {an[2]}]
# Constraints for AN3
set_property PACKAGE_PIN N5 [get_ports {an[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {an[3]}]

# Constraints for AN4
set_property PACKAGE_PIN N2 [get_ports {an4}]
set_property IOSTANDARD LVCMOS33 [get_ports {an4}]
# Constraints for AN5
set_property PACKAGE_PIN N4 [get_ports {an5}]
set_property IOSTANDARD LVCMOS33 [get_ports {an5}]
# Constraints for AN6
set_property PACKAGE_PIN L1 [get_ports {an6}]
set_property IOSTANDARD LVCMOS33 [get_ports {an6}]
# Constraints for AN7
set_property PACKAGE_PIN M1 [get_ports {an7}]
set_property IOSTANDARD LVCMOS33 [get_ports {an7}]


# Constraints for CA
set_property PACKAGE_PIN L3 [get_ports {ca}]
set_property IOSTANDARD LVCMOS33 [get_ports {ca}]
# Constraints for CB
set_property PACKAGE_PIN N1 [get_ports {cb}]
set_property IOSTANDARD LVCMOS33 [get_ports {cb}]
# Constraints for CC
set_property PACKAGE_PIN L5 [get_ports {cc}]
set_property IOSTANDARD LVCMOS33 [get_ports {cc}]
# Constraints for CD
set_property PACKAGE_PIN L4 [get_ports {cd}]
set_property IOSTANDARD LVCMOS33 [get_ports {cd}]
# Constraints for CE
set_property PACKAGE_PIN K3 [get_ports {ce}]
set_property IOSTANDARD LVCMOS33 [get_ports {ce}]
# Constraints for CF
set_property PACKAGE_PIN M2 [get_ports {cf}]
set_property IOSTANDARD LVCMOS33 [get_ports {cf}]
# Constraints for CG
set_property PACKAGE_PIN L6 [get_ports {cg}]
set_property IOSTANDARD LVCMOS33 [get_ports {cg}]
# Constraints for DP
set_property PACKAGE_PIN M4 [get_ports dp]
set_property IOSTANDARD LVCMOS33 [get_ports dp]
