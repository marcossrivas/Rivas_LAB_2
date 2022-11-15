transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/marco/Desktop/Rivas_LAB_2/PARTE_B/FFD.vhd}
vcom -93 -work work {C:/Users/marco/Desktop/Rivas_LAB_2/PARTE_B/FULL_ADDER.vhd}

vcom -93 -work work {C:/Users/marco/Desktop/Rivas_LAB_2/PARTE_B/adder_test.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiii -L rtl_work -L work -voptargs="+acc"  adder_test

add wave *
view structure
view signals
run -all
