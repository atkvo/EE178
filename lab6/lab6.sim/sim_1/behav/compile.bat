@echo off
rem  Vivado(TM)
rem  compile.bat: a Vivado-generated XSim simulation Script
rem  Copyright 1986-1999, 2001-2013 Xilinx, Inc. All Rights Reserved.

set PATH=$XILINX/lib/$PLATFORM:$XILINX/bin/$PLATFORM;/opt/Xilinx/Vivado/2013.4/ids_lite/EDK/bin/lin64:/opt/Xilinx/Vivado/2013.4/ids_lite/ISE/bin/lin64;/opt/Xilinx/Vivado/2013.4/ids_lite/EDK/lib/lin64:/opt/Xilinx/Vivado/2013.4/ids_lite/ISE/lib/lin64;/opt/Xilinx/Vivado/2013.4/bin;%PATH%
set XILINX_PLANAHEAD=/opt/Xilinx/Vivado/2013.4

xelab -m64 --debug typical --relax -L work -L blk_mem_gen_v8_1 -L unisims_ver -L unimacro_ver -L secureip --snapshot testbench_v_behav --prj /home/andrew/vivadoprojects/lab6/lab6.sim/sim_1/behav/testbench_v.prj   work.testbench_v   work.glbl
if errorlevel 1 (
   cmd /c exit /b %errorlevel%
)
