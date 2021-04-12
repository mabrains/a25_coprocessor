# Design
set ::env(DESIGN_NAME) "a25_coprocessor"

set ::env(VERILOG_FILES) [glob $::env(OPENLANE_ROOT)/designs/a25_coprocessor/src/*.v]



set ::env(CLOCK_PERIOD) "20.000"
set ::env(CLOCK_PORT) "i_clk"
set ::env(CELL_PAD) 4

# set ::env(FP_PIN_ORDER_CFG) $::env(OPENLANE_ROOT)/designs/spm/pin_order.cfg

set filename $::env(OPENLANE_ROOT)/designs/$::env(DESIGN_NAME)/$::env(PDK)_$::env(STD_CELL_LIBRARY)_config.tcl
if { [file exists $filename] == 1} {
	source $filename
}
