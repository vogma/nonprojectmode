set outputDir ./output             

#Program Device
open_hw_manager
connect_hw_server -allow_non_jtag
open_hw_target


# Program and Refresh the XC7A100TCSG324 Device
set Device [get_hw_devices xc7a100t_0]
current_hw_device $Device
refresh_hw_device -update_hw_probes false [lindex $Device 0]
set_property PROBES.FILE {} $Device
set_property FULL_PROBES.FILE {} $Device
set_property PROGRAM.FILE {./output/rop.bit} $Device

program_hw_devices $Device
refresh_hw_device [lindex $Device 0]

disconnect_hw_server



