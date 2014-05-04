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
read_verilog /home/andrew/Documents/xilinx_projects/lab5part2/lab5part2.srcs/sources_1/new/oetsort.v
read_xdc /home/andrew/Documents/xilinx_projects/lab5part2/lab5part2.srcs/constrs_1/new/oetsort.xdc
set_property used_in_implementation false [get_files /home/andrew/Documents/xilinx_projects/lab5part2/lab5part2.srcs/constrs_1/new/oetsort.xdc]

set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir /home/andrew/Documents/xilinx_projects/lab5part2/lab5part2.data/wt [current_project]
set_property parent.project_dir /home/andrew/Documents/xilinx_projects/lab5part2 [current_project]
synth_design -top sort -part xc7a100tcsg324-1
write_checkpoint sort.dcp
report_utilization -file sort_utilization_synth.rpt -pb sort_utilization_synth.pb
