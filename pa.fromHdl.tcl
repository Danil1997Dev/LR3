
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name LR3 -dir "D:/intelFPGA/18.1/Lab_Verilog/LR3/planAhead_run_3" -part xc7a100tcsg324-3
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "D:/intelFPGA/18.1/Lab_Verilog/LR3/Nexys4_Master.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {M_7SEG_DECODER_V10.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {LR3_Seq_Logic_L.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {M_Nexys4_DISP.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {LR3_Seq_Logic.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {LR3_GEN_CE_DISP.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {LR3_GEN_CE.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {LR3_BTN_FLTR.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {LR3.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {LR3_TOP.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top LR3_TOP $srcset
add_files [list {Nexys4_Master.ucf}] -fileset [get_property constrset [current_run]]
add_files [list {LR3_TOP_TEST.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc7a100tcsg324-3
