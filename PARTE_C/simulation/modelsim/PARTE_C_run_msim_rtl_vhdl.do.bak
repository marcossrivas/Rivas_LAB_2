transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/marco/Desktop/Rivas_LAB_2/PARTE_C/FFD.vhd}
vcom -93 -work work {C:/Users/marco/Desktop/Rivas_LAB_2/PARTE_C/FULL_ADDER.vhd}
vcom -93 -work work {C:/Users/marco/Desktop/Rivas_LAB_2/PARTE_C/V_FLAG.vhd}

vcom -93 -work work {C:/Users/marco/Desktop/Rivas_LAB_2/PARTE_C/PARTE_C.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiii -L rtl_work -L work -voptargs="+acc"  PARTE_C

add wave *
view structure
view signals
run -all
