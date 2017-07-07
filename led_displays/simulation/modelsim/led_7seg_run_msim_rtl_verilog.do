transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/Georgantas/Documents/fpga4fun/led_displays {C:/Users/Georgantas/Documents/fpga4fun/led_displays/led_7seg.v}

