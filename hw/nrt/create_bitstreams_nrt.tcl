# Author: David Akre
# Description: TCL script to help with writing static and partial bitstreams

set timing_nrt ./Implement/top_timing_empty_nrt.rpt
set utilization_nrt ./Implement/top_utilization_empty_nrt.rpt
set checkpoint_nrt ./Implement/top_route_design_full_nrt.dcp
set static_checkpoint_nrt ./Checkpoint/static_route_design_nrt.dcp

# Part 1 - Create static bitstream
# Remove all RM instances from design
update_design -cell add_1 -black_box
update_design -cell comp_1 -black_box
update_design -cell dec_1 -black_box
update_design -cell div_1 -black_box
update_design -cell inc_1 -black_box
update_design -cell mod_1 -black_box
update_design -cell mul_1 -black_box
update_design -cell mux_1 -black_box
update_design -cell reg_1 -black_box
update_design -cell shl_1 -black_box
update_design -cell shr_1 -black_box
update_design -cell sub_1 -black_box

# Lock down placement and routing
lock_design -level routing

# Write checkpoint
write_checkpoint -force $static_checkpoint_nrt
close_project

# Re-open project
create_project -in_memory -part ${part}
add_files ./Checkpoint/static_route_design_nrt.dcp
load_all_dcps
link_full_design ${part}
write_checkpoint -force $checkpoint_nrt
report_utilization -file $utilization_nrt
report_timing_summary -file $timing_nrt

# Verify routing is accurate
# TODO Check this out
#pr_verify $checkpoint_nrt $static_checkpoint_nrt
close_project

# Write bitstream now
open_checkpoint $checkpoint_nrt

run_flow

write_bitstream -force -file Bitstreams/config_full_nrt.bit
