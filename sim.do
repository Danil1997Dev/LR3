set name LR3_TOP_TEST
 
vlib work
 
vlog "*.v"    
 
vsim -voptargs=+acc work.$name

# Set the window types 
view wave
view structure
view signals
#add wave 
add wave -noupdate -divider {all}
add wave -noupdate -radix unsigned sim:/$name/* 
add wave -noupdate -divider {btnf_c}
add wave -position insertpoint sim:/LR3_TOP_TEST/uut/btnf_c/*
add wave -noupdate -divider {gce}
add wave -position insertpoint sim:/LR3_TOP_TEST/uut/gce/*
add wave -noupdate -divider {gced}
add wave -position insertpoint sim:/LR3_TOP_TEST/uut/gced/*
add wave -noupdate -divider {main}
add wave -position insertpoint sim:/LR3_TOP_TEST/uut/main/*
run -all

#00110110011110010111001001101100
#00110110111110010111001001101100