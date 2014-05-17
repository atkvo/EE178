# Constraints for CLK
set_property PACKAGE_PIN E3 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
create_clock -name external_clock -period 10.00 [get_ports clk]

## Constraints for AUD 
#set_property PACKAGE_PIN A11 [get_ports speaker] 
#set_property IOSTANDARD LVCMOS33 [get_ports speaker] 
  
## Constraints for VCC 
#set_property PACKAGE_PIN D12 [get_ports vcc] 
#set_property IOSTANDARD LVCMOS33 [get_ports vcc]
 

#########################################################
#	Switches					#
#########################################################

##Bank = 34, Pin name = IO_L21P_T3_DQS_34,			Sch name = SW0
set_property PACKAGE_PIN U9 [get_ports {mode[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {mode[0]}]
#Bank = 34, Pin name = IO_25_34,				Sch name = SW1
set_property PACKAGE_PIN U8 [get_ports {mode[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {mode[1]}]
##Bank = 34, Pin name = IO_L23P_T3_34,				Sch name = SW2
set_property PACKAGE_PIN R7 [get_ports {alarm_sw}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {alarm_sw}]


#########################################################
#	Buttons						#
#########################################################

#Sch name = BTNC
set_property PACKAGE_PIN E16 [get_ports incr_mm]						
	set_property IOSTANDARD LVCMOS33 [get_ports incr_mm]
#Sch name = BTNU
#set_property PACKAGE_PIN F15 [get_ports btnU]						
	#set_property IOSTANDARD LVCMOS33 [get_ports btnU]
#Sch name = BTNL
set_property PACKAGE_PIN T16 [get_ports incr_hh]						
	set_property IOSTANDARD LVCMOS33 [get_ports incr_hh]
#Sch name = BTNR
set_property PACKAGE_PIN R10 [get_ports incr_ss]						
	set_property IOSTANDARD LVCMOS33 [get_ports incr_ss]
#Sch name = BTND
set_property PACKAGE_PIN V10 [get_ports timer_toggle]						
	set_property IOSTANDARD LVCMOS33 [get_ports timer_toggle]



#########################################################
#	7Segs						#
#########################################################
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
set_property PACKAGE_PIN N2 [get_ports {an[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {an[4]}]
# Constraints for AN5
set_property PACKAGE_PIN N4 [get_ports {an[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {an[5]}]
# Constraints for AN6
set_property PACKAGE_PIN L1 [get_ports {an[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {an[6]}]
# Constraints for AN7
set_property PACKAGE_PIN M1 [get_ports {an[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {an[7]}]


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
