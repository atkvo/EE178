
∆
scannot add Board Part %s available at %s as part %s specified in board_part file is either invalid or not available5*board2.
xilinx.com:kc705:part0:1.02default:default2f
R/opt/Xilinx/Vivado/2014.1/data/boards/board_parts/kintex7/kc705/1.0/board_part.xml2default:default2$
xc7k325tffg900-22default:defaultZ49-26
∆
scannot add Board Part %s available at %s as part %s specified in board_part file is either invalid or not available5*board2.
xilinx.com:kc705:part0:0.92default:default2f
R/opt/Xilinx/Vivado/2014.1/data/boards/board_parts/kintex7/kc705/0.9/board_part.xml2default:default2$
xc7k325tffg900-22default:defaultZ49-26
¬
scannot add Board Part %s available at %s as part %s specified in board_part file is either invalid or not available5*board2.
xilinx.com:zc706:part0:1.02default:default2c
O/opt/Xilinx/Vivado/2014.1/data/boards/board_parts/zynq/zc706/1.0/board_part.xml2default:default2#
xc7z045ffg900-22default:defaultZ49-26
¬
scannot add Board Part %s available at %s as part %s specified in board_part file is either invalid or not available5*board2.
xilinx.com:zc706:part0:0.92default:default2c
O/opt/Xilinx/Vivado/2014.1/data/boards/board_parts/zynq/zc706/0.9/board_part.xml2default:default2#
xc7z045ffg900-22default:defaultZ49-26
p
Command: %s
53*	vivadotcl2H
4synth_design -top main_source -part xc7a100tcsg324-12default:defaultZ4-113
/

Starting synthesis...

3*	vivadotclZ4-3
ñ
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-347
Ü
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-349
ú
%s*synth2å
xStarting RTL Elaboration : Time (s): cpu = 00:00:03 ; elapsed = 00:00:03 . Memory (MB): peak = 778.273 ; gain = 154.910
2default:default
ÿ
synthesizing module '%s'638*oasys2
main_source2default:default2h
R/home/andrew/projects/EE178/alarmclock/alarmclock.srcs/sources_1/new/main_source.v2default:default2
232default:default8@Z8-638
÷
synthesizing module '%s'638*oasys2

controller2default:default2g
Q/home/andrew/projects/EE178/alarmclock/alarmclock.srcs/sources_1/new/controller.v2default:default2
232default:default8@Z8-638
ë
%done synthesizing module '%s' (%s#%s)256*oasys2

controller2default:default2
12default:default2
12default:default2g
Q/home/andrew/projects/EE178/alarmclock/alarmclock.srcs/sources_1/new/controller.v2default:default2
232default:default8@Z8-256
–
synthesizing module '%s'638*oasys2
display2default:default2d
N/home/andrew/projects/EE178/alarmclock/alarmclock.srcs/sources_1/new/display.v2default:default2
232default:default8@Z8-638
ã
%done synthesizing module '%s' (%s#%s)256*oasys2
display2default:default2
22default:default2
12default:default2d
N/home/andrew/projects/EE178/alarmclock/alarmclock.srcs/sources_1/new/display.v2default:default2
232default:default8@Z8-256
Ã
synthesizing module '%s'638*oasys2
clock2default:default2b
L/home/andrew/projects/EE178/alarmclock/alarmclock.srcs/sources_1/new/clock.v2default:default2
232default:default8@Z8-638
á
%done synthesizing module '%s' (%s#%s)256*oasys2
clock2default:default2
32default:default2
12default:default2b
L/home/andrew/projects/EE178/alarmclock/alarmclock.srcs/sources_1/new/clock.v2default:default2
232default:default8@Z8-256
ì
%done synthesizing module '%s' (%s#%s)256*oasys2
main_source2default:default2
42default:default2
12default:default2h
R/home/andrew/projects/EE178/alarmclock/alarmclock.srcs/sources_1/new/main_source.v2default:default2
232default:default8@Z8-256
ú
%s*synth2å
xFinished RTL Elaboration : Time (s): cpu = 00:00:04 ; elapsed = 00:00:04 . Memory (MB): peak = 813.141 ; gain = 189.777
2default:default
;
%s*synth2,

Report Check Netlist: 
2default:default
l
%s*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:default
l
%s*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:default
l
%s*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:default
l
%s*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:default
l
%s*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:default
ù
Loading clock regions from %s
13*device2f
R/opt/Xilinx/Vivado/2014.1/data/parts/xilinx/artix7/artix7/xc7a100t/ClockRegion.xml2default:defaultZ21-13
û
Loading clock buffers from %s
11*device2g
S/opt/Xilinx/Vivado/2014.1/data/parts/xilinx/artix7/artix7/xc7a100t/ClockBuffers.xml2default:defaultZ21-11
õ
&Loading clock placement rules from %s
318*place2[
G/opt/Xilinx/Vivado/2014.1/data/parts/xilinx/artix7/ClockPlacerRules.xml2default:defaultZ30-318
ô
)Loading package pin functions from %s...
17*device2W
C/opt/Xilinx/Vivado/2014.1/data/parts/xilinx/artix7/PinFunctions.xml2default:defaultZ21-17
ö
Loading package from %s
16*device2i
U/opt/Xilinx/Vivado/2014.1/data/parts/xilinx/artix7/artix7/xc7a100t/csg324/Package.xml2default:defaultZ21-16
é
Loading io standards from %s
15*device2X
D/opt/Xilinx/Vivado/2014.1/data/./parts/xilinx/artix7/IOStandards.xml2default:defaultZ21-15
ö
+Loading device configuration modes from %s
14*device2V
B/opt/Xilinx/Vivado/2014.1/data/parts/xilinx/artix7/ConfigModes.xml2default:defaultZ21-14
5

Processing XDC Constraints
244*projectZ1-262
ù
Parsing XDC File [%s]
179*designutils2g
S/home/andrew/projects/EE178/alarmclock/alarmclock.srcs/constrs_1/new/alarmclock.xdc2default:defaultZ20-179
¶
Finished Parsing XDC File [%s]
178*designutils2g
S/home/andrew/projects/EE178/alarmclock/alarmclock.srcs/constrs_1/new/alarmclock.xdc2default:defaultZ20-178
?
&Completed Processing XDC Constraints

245*projectZ1-263
u
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111
≤
%s*synth2¢
çFinished Loading Part and Timing Information : Time (s): cpu = 00:00:10 ; elapsed = 00:00:11 . Memory (MB): peak = 1034.355 ; gain = 410.992
2default:default
∂
%s*synth2¶
ëFinished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:11 ; elapsed = 00:00:11 . Memory (MB): peak = 1034.355 ; gain = 410.992
2default:default
û
%s*synth2é
zFinished RTL Optimization : Time (s): cpu = 00:00:11 ; elapsed = 00:00:11 . Memory (MB): peak = 1034.355 ; gain = 410.992
2default:default
<
%s*synth2-

Report RTL Partitions: 
2default:default
N
%s*synth2?
++-+--------------+------------+----------+
2default:default
N
%s*synth2?
+| |RTL Partition |Replication |Instances |
2default:default
N
%s*synth2?
++-+--------------+------------+----------+
2default:default
N
%s*synth2?
++-+--------------+------------+----------+
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
1
%s*synth2"
+---Adders : 
2default:default
Q
%s*synth2B
.	   2 Input     27 Bit       Adders := 1     
2default:default
Q
%s*synth2B
.	   2 Input     24 Bit       Adders := 1     
2default:default
Q
%s*synth2B
.	   2 Input      8 Bit       Adders := 13    
2default:default
4
%s*synth2%
+---Registers : 
2default:default
Q
%s*synth2B
.	               27 Bit    Registers := 1     
2default:default
Q
%s*synth2B
.	               24 Bit    Registers := 1     
2default:default
Q
%s*synth2B
.	                8 Bit    Registers := 8     
2default:default
Q
%s*synth2B
.	                1 Bit    Registers := 8     
2default:default
0
%s*synth2!
+---Muxes : 
2default:default
Q
%s*synth2B
.	   2 Input     27 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	   2 Input     24 Bit        Muxes := 5     
2default:default
Q
%s*synth2B
.	   2 Input      8 Bit        Muxes := 31    
2default:default
Q
%s*synth2B
.	   2 Input      4 Bit        Muxes := 16    
2default:default
Q
%s*synth2B
.	   3 Input      4 Bit        Muxes := 6     
2default:default
Q
%s*synth2B
.	   7 Input      4 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	   2 Input      2 Bit        Muxes := 5     
2default:default
Q
%s*synth2B
.	   2 Input      1 Bit        Muxes := 14    
2default:default
F
%s*synth27
#Hierarchical RTL Component report 
2default:default
7
%s*synth2(
Module main_source 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
1
%s*synth2"
+---Adders : 
2default:default
Q
%s*synth2B
.	   2 Input     24 Bit       Adders := 1     
2default:default
4
%s*synth2%
+---Registers : 
2default:default
Q
%s*synth2B
.	               24 Bit    Registers := 1     
2default:default
Q
%s*synth2B
.	                1 Bit    Registers := 4     
2default:default
0
%s*synth2!
+---Muxes : 
2default:default
Q
%s*synth2B
.	   2 Input     24 Bit        Muxes := 5     
2default:default
Q
%s*synth2B
.	   2 Input      1 Bit        Muxes := 1     
2default:default
6
%s*synth2'
Module controller 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
1
%s*synth2"
+---Adders : 
2default:default
Q
%s*synth2B
.	   2 Input     27 Bit       Adders := 1     
2default:default
Q
%s*synth2B
.	   2 Input      8 Bit       Adders := 8     
2default:default
4
%s*synth2%
+---Registers : 
2default:default
Q
%s*synth2B
.	               27 Bit    Registers := 1     
2default:default
Q
%s*synth2B
.	                8 Bit    Registers := 5     
2default:default
Q
%s*synth2B
.	                1 Bit    Registers := 2     
2default:default
0
%s*synth2!
+---Muxes : 
2default:default
Q
%s*synth2B
.	   2 Input     27 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	   2 Input      8 Bit        Muxes := 22    
2default:default
Q
%s*synth2B
.	   2 Input      2 Bit        Muxes := 5     
2default:default
Q
%s*synth2B
.	   2 Input      1 Bit        Muxes := 11    
2default:default
3
%s*synth2$
Module display 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
0
%s*synth2!
+---Muxes : 
2default:default
Q
%s*synth2B
.	   7 Input      4 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	   3 Input      4 Bit        Muxes := 6     
2default:default
Q
%s*synth2B
.	   2 Input      4 Bit        Muxes := 16    
2default:default
1
%s*synth2"
Module clock 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
1
%s*synth2"
+---Adders : 
2default:default
Q
%s*synth2B
.	   2 Input      8 Bit       Adders := 5     
2default:default
4
%s*synth2%
+---Registers : 
2default:default
Q
%s*synth2B
.	                8 Bit    Registers := 3     
2default:default
Q
%s*synth2B
.	                1 Bit    Registers := 2     
2default:default
0
%s*synth2!
+---Muxes : 
2default:default
Q
%s*synth2B
.	   2 Input      8 Bit        Muxes := 9     
2default:default
Q
%s*synth2B
.	   2 Input      1 Bit        Muxes := 2     
2default:default
z
%s*synth2k
WPart Resources:
DSPs: 240 (col length:80)
BRAMs: 270 (col length: RAMB18 80 RAMB36 40)
2default:default
≤
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
\clock_controller/sen_reg[0] 2default:default2
main_source2default:defaultZ8-3332
≤
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
\clock_controller/sen_reg[1] 2default:default2
main_source2default:defaultZ8-3332
Ø
+multi-driven net %s with %s driver pin '%s'3351*oasys2
Q2default:default2
1st2default:default21
clock_controller/sen_reg[1]/Q2default:default2g
Q/home/andrew/projects/EE178/alarmclock/alarmclock.srcs/sources_1/new/controller.v2default:default2
1152default:default8@Z8-3352
ï
+multi-driven net %s with %s driver pin '%s'3351*oasys2
Q2default:default2
2nd2default:default2
GND2default:default2g
Q/home/andrew/projects/EE178/alarmclock/alarmclock.srcs/sources_1/new/controller.v2default:default2
1152default:default8@Z8-3352
µ
ESequential element (%s) is unused and will be removed from module %s.3332*oasys24
 \clock_controller/sen_reg[0]__0 2default:default2
main_source2default:defaultZ8-3332
y
!design %s has unconnected port %s3331*oasys2
main_source2default:default2
alarm_sw2default:defaultZ8-3331
™
%s*synth2ö
ÖFinished Cross Boundary Optimization : Time (s): cpu = 00:00:20 ; elapsed = 00:00:19 . Memory (MB): peak = 1106.383 ; gain = 483.020
2default:default
¢
%s*synth2í
~---------------------------------------------------------------------------------
Start RAM, DSP and Shift Register Reporting
2default:default
u
%s*synth2f
R---------------------------------------------------------------------------------
2default:default
¶
%s*synth2ñ
Å---------------------------------------------------------------------------------
Finished RAM, DSP and Shift Register Reporting
2default:default
u
%s*synth2f
R---------------------------------------------------------------------------------
2default:default
ü
%s*synth2è
{Finished Area Optimization : Time (s): cpu = 00:00:22 ; elapsed = 00:00:21 . Memory (MB): peak = 1147.414 ; gain = 524.051
2default:default
Æ
%s*synth2û
âFinished Applying XDC Timing Constraints : Time (s): cpu = 00:00:22 ; elapsed = 00:00:21 . Memory (MB): peak = 1147.414 ; gain = 524.051
2default:default
°
%s*synth2ë
}Finished Timing Optimization : Time (s): cpu = 00:00:22 ; elapsed = 00:00:22 . Memory (MB): peak = 1147.414 ; gain = 524.051
2default:default
∑
ESequential element (%s) is unused and will be removed from module %s.3332*oasys26
"\clock_controller/timer_mm_reg[7] 2default:default2
main_source2default:defaultZ8-3332
∑
ESequential element (%s) is unused and will be removed from module %s.3332*oasys26
"\clock_controller/timer_mm_reg[6] 2default:default2
main_source2default:defaultZ8-3332
∑
ESequential element (%s) is unused and will be removed from module %s.3332*oasys26
"\clock_controller/timer_ss_reg[7] 2default:default2
main_source2default:defaultZ8-3332
∑
ESequential element (%s) is unused and will be removed from module %s.3332*oasys26
"\clock_controller/timer_ss_reg[6] 2default:default2
main_source2default:defaultZ8-3332
†
%s*synth2ê
|Finished Technology Mapping : Time (s): cpu = 00:00:23 ; elapsed = 00:00:23 . Memory (MB): peak = 1147.414 ; gain = 524.051
2default:default
ö
%s*synth2ä
vFinished IO Insertion : Time (s): cpu = 00:00:24 ; elapsed = 00:00:23 . Memory (MB): peak = 1147.414 ; gain = 524.051
2default:default
;
%s*synth2,

Report Check Netlist: 
2default:default
l
%s*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:default
l
%s*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:default
l
%s*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:default
l
%s*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:default
l
%s*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:default
´
%s*synth2õ
ÜFinished Renaming Generated Instances : Time (s): cpu = 00:00:24 ; elapsed = 00:00:23 . Memory (MB): peak = 1147.414 ; gain = 524.051
2default:default
®
%s*synth2ò
ÉFinished Rebuilding User Hierarchy : Time (s): cpu = 00:00:24 ; elapsed = 00:00:23 . Memory (MB): peak = 1147.414 ; gain = 524.051
2default:default
¢
%s*synth2í
~---------------------------------------------------------------------------------
Start RAM, DSP and Shift Register Reporting
2default:default
u
%s*synth2f
R---------------------------------------------------------------------------------
2default:default
¶
%s*synth2ñ
Å---------------------------------------------------------------------------------
Finished RAM, DSP and Shift Register Reporting
2default:default
u
%s*synth2f
R---------------------------------------------------------------------------------
2default:default
8
%s*synth2)

Report BlackBoxes: 
2default:default
A
%s*synth22
+-+--------------+----------+
2default:default
A
%s*synth22
| |BlackBox name |Instances |
2default:default
A
%s*synth22
+-+--------------+----------+
2default:default
A
%s*synth22
+-+--------------+----------+
2default:default
8
%s*synth2)

Report Cell Usage: 
2default:default
;
%s*synth2,
+------+-------+------+
2default:default
;
%s*synth2,
|      |Cell   |Count |
2default:default
;
%s*synth2,
+------+-------+------+
2default:default
;
%s*synth2,
|1     |BUFG   |     1|
2default:default
;
%s*synth2,
|2     |CARRY4 |   107|
2default:default
;
%s*synth2,
|3     |LUT1   |   112|
2default:default
;
%s*synth2,
|4     |LUT2   |   164|
2default:default
;
%s*synth2,
|5     |LUT3   |   105|
2default:default
;
%s*synth2,
|6     |LUT4   |   134|
2default:default
;
%s*synth2,
|7     |LUT5   |   118|
2default:default
;
%s*synth2,
|8     |LUT6   |   272|
2default:default
;
%s*synth2,
|9     |MUXF7  |     6|
2default:default
;
%s*synth2,
|10    |FDRE   |   166|
2default:default
;
%s*synth2,
|11    |IBUF   |     7|
2default:default
;
%s*synth2,
|12    |OBUF   |    15|
2default:default
;
%s*synth2,
+------+-------+------+
2default:default
<
%s*synth2-

Report Instance Areas: 
2default:default
S
%s*synth2D
0+------+-------------------+-----------+------+
2default:default
S
%s*synth2D
0|      |Instance           |Module     |Cells |
2default:default
S
%s*synth2D
0+------+-------------------+-----------+------+
2default:default
S
%s*synth2D
0|1     |top                |           |  1207|
2default:default
S
%s*synth2D
0|2     |  clock_controller |controller |   581|
2default:default
S
%s*synth2D
0|3     |  clock_display    |display    |    70|
2default:default
S
%s*synth2D
0|4     |  clock_inst       |clock      |   395|
2default:default
S
%s*synth2D
0+------+-------------------+-----------+------+
2default:default
ß
%s*synth2ó
ÇFinished Writing Synthesis Report : Time (s): cpu = 00:00:24 ; elapsed = 00:00:23 . Memory (MB): peak = 1147.414 ; gain = 524.051
2default:default
i
%s*synth2Z
FSynthesis finished with 0 errors, 2 critical warnings and 8 warnings.
2default:default
•
%s*synth2ï
ÄSynthesis Optimization Complete : Time (s): cpu = 00:00:24 ; elapsed = 00:00:23 . Memory (MB): peak = 1147.414 ; gain = 524.051
2default:default
\
-Analyzing %s Unisim elements for replacement
17*netlist2
72default:defaultZ29-17
a
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28
^
1Inserted %s IBUFs to IO ports without IO buffers.100*opt2
02default:defaultZ31-140
^
1Inserted %s OBUFs to IO ports without IO buffers.101*opt2
02default:defaultZ31-141
C
Pushed %s inverter(s).
98*opt2
02default:defaultZ31-138
u
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111
L
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83
Ω
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
172default:default2
82default:default2
22default:default2
02default:defaultZ4-41
U
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42
˝
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:242default:default2
00:00:232default:default2
1147.4182default:default2
422.1412default:defaultZ17-268
Ç
vreport_utilization: Time (s): cpu = 00:00:00.03 ; elapsed = 00:00:00.03 . Memory (MB): peak = 1147.418 ; gain = 0.000
*common
w
Exiting %s at %s...
206*common2
Vivado2default:default2,
Fri May 16 17:04:37 20142default:defaultZ17-206