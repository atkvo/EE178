@echo off
rem  Vivado(TM)
rem  compile.bat: a Vivado-generated XSim simulation Script
rem  Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.

set PATH=$XILINX/lib/$PLATFORM:$XILINX/bin/$PLATFORM;/opt/Xilinx/Vivado/2014.1/ids_lite/ISE/bin/lin64;/opt/Xilinx/Vivado/2014.1/ids_lite/ISE/lib/lin64;/opt/Xilinx/Vivado/2014.1/bin;%PATH%
set XILINX_PLANAHEAD=/opt/Xilinx/Vivado/2014.1

xelab -m64 --debug typical --relax -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot testbench_v_behav --prj /home/andrew/projects/EE178/alarmclock/alarmclock.sim/sim_1/behav/testbench_v.prj   xil_defaultlib.testbench_v   xil_defaultlib.glbl
if errorlevel 1 (
   cmd /c exit /b %errorlevel%
)
