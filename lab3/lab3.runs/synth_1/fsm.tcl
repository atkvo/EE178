# 
# Synthesis run script generated by Vivado
# 

  set_param gui.test TreeTableDev
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config -id {Synth 8-256} -limit 10000
set_msg_config -id {Synth 8-638} -limit 10000
create_project -in_memory -part xc7a100tcsg324-1
set_property target_language Verilog [current_project]
set_param project.compositeFile.enableAutoGeneration 0
read_verilog /home/andrew/Documents/xilinx_projects/lab3/lab3.srcs/sources_1/new/fsm.v
read_xdc /home/andrew/Documents/xilinx_projects/lab3/lab3.srcs/constrs_1/new/fsm.xdc
set_property used_in_implementation false [get_files /home/andrew/Documents/xilinx_projects/lab3/lab3.srcs/constrs_1/new/fsm.xdc]

set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir /home/andrew/Documents/xilinx_projects/lab3/lab3.data/wt [current_project]
set_property parent.project_dir /home/andrew/Documents/xilinx_projects/lab3 [current_project]
synth_design -top fsm -part xc7a100tcsg324-1
write_checkpoint fsm.dcp
report_utilization -file fsm_utilization_synth.rpt -pb fsm_utilization_synth.pb
