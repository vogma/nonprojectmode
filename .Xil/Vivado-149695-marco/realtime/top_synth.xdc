set_property SRC_FILE_INFO {cfile:/home/marco/entwicklung/projekte/ArtyA7-Projects/nonprojectmode/src/ip/clk_wiz_test/clk_wiz_test/clk_wiz_test_in_context.xdc rfile:../../../src/ip/clk_wiz_test/clk_wiz_test/clk_wiz_test_in_context.xdc id:1 order:EARLY scoped_inst:vga_templ/clk_div_inst} [current_design]
set_property SRC_FILE_INFO {cfile:/home/marco/entwicklung/projekte/ArtyA7-Projects/nonprojectmode/constr/Arty-A7-100-Master.xdc rfile:../../../constr/Arty-A7-100-Master.xdc id:2} [current_design]
set_property src_info {type:SCOPED_XDC file:1 line:1 export:INPUT save:INPUT read:READ} [current_design]
create_clock -period 10.000 -name clk [get_ports clk]
set_property src_info {type:SCOPED_XDC file:1 line:2 export:INPUT save:INPUT read:READ} [current_design]
create_generated_clock -name vga_templ/clk_div_inst/clk_out1 -source [get_pins vga_templ/clk_div_inst/clk_in1] -edges {1 2 3} -edge_shift {0.000 11.667 23.333} [get_pins vga_templ/clk_div_inst/clk_out1]
set_property src_info {type:SCOPED_XDC file:1 line:3 export:INPUT save:INPUT read:READ} [current_design]
set_property IO_BUFFER_TYPE NONE [get_ports clk]
set_property src_info {type:SCOPED_XDC file:1 line:4 export:INPUT save:INPUT read:READ} [current_design]
set_property CLOCK_BUFFER_TYPE NONE [get_ports clk]
set_property src_info {type:SCOPED_XDC file:1 line:5 export:INPUT save:INPUT read:READ} [current_design]
set_property IS_IP_OOC_CELL true [get_cells vga_templ/clk_div_inst]
set_property src_info {type:XDC file:2 line:8 export:INPUT save:INPUT read:READ} [current_design]
create_clock -period 10.000 -name sys_clk_pin -waveform {0.000 5.000} -add [get_ports clk]
set_property src_info {type:TCL file:{} line:-1 export:INPUT save:INPUT read:READ} [current_design]
set_property KEEP_HIERARCHY SOFT [get_cells vga_templ/clk_div_inst]