transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/Muditha/Desktop/verilog\ projects/voting\ machine {C:/Users/Muditha/Desktop/verilog projects/voting machine/votingMachine.v}
vlog -vlog01compat -work work +incdir+C:/Users/Muditha/Desktop/verilog\ projects/voting\ machine {C:/Users/Muditha/Desktop/verilog projects/voting machine/voteLogger.v}
vlog -vlog01compat -work work +incdir+C:/Users/Muditha/Desktop/verilog\ projects/voting\ machine {C:/Users/Muditha/Desktop/verilog projects/voting machine/modeControl.v}
vlog -vlog01compat -work work +incdir+C:/Users/Muditha/Desktop/verilog\ projects/voting\ machine {C:/Users/Muditha/Desktop/verilog projects/voting machine/buttonControl.v}

