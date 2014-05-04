# 
# Synthesis run script generated by Vivado
# 

  set_param gui.test TreeTableDev
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a100tcsg324-1
set_property target_language Verilog [current_project]
set_param project.compositeFile.enableAutoGeneration 0
read_verilog /home/andrew/Documents/xilinx_projects/Lab2/Lab2.srcs/sources_1/new/lab2.v
read_xdc /home/andrew/Documents/xilinx_projects/Lab2/Lab2.srcs/constrs_1/new/lab2.xdc
set_property used_in_implementation false [get_files /home/andrew/Documents/xilinx_projects/Lab2/Lab2.srcs/constrs_1/new/lab2.xdc]

set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir /home/andrew/Documents/xilinx_projects/Lab2/Lab2.data/wt [current_project]
set_property parent.project_dir /home/andrew/Documents/xilinx_projects/Lab2 [current_project]
synth_design -top lab2 -part xc7a100tcsg324-1
write_checkpoint lab2.dcp
report_utilization -file lab2_utilization_synth.rpt -pb lab2_utilization_synth.pb