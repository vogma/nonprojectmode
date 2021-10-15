set_part XC7A100TCSG324-1

create_ip -name blk_mem_gen -dir ./src/ip -vendor xilinx.com -library ip -version 8.4 -module_name blk_mem_gen_0
set_property -dict [list CONFIG.Write_Width_A {12} CONFIG.Write_Depth_A {400000} CONFIG.Read_Width_A {12} CONFIG.Write_Width_B {12} CONFIG.Read_Width_B {12}] [get_ips blk_mem_gen_0]

generate_target {instantiation_template} [get_files ./src/ip/blk_mem_gen_0/blk_mem_gen_0.xci]
update_compile_order
generate_target all [get_files ./src/ip/blk_mem_gen_0/blk_mem_gen_0.xci]
catch { config_ip_cache -export [get_ips -all blk_mem_gen_0] }
synth_ip [get_ips blk_mem_gen_0] 