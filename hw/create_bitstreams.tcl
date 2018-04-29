# Author: David Akre
# Description: TCL script to help with writing static and partial bitstreams

if { ${rt} == 0 } {
  set timing ./Implement/top_timing_empty_nrt.rpt
  set utilization ./Implement/top_utilization_empty_nrt.rpt
  set checkpoint ./Implement/top_route_design_full_nrt.dcp
  set static_checkpoint ./Checkpoint/static_route_design_nrt.dcp
  set config config_full_nrt.bit
} else {
  set timing ./Implement/top_timing_empty_rt.rpt
  set utilization ./Implement/top_utilization_empty_rt.rpt
  set checkpoint ./Implement/top_route_design_full_rt.dcp
  set static_checkpoint ./Checkpoint/static_route_design_rt.dcp
  set config config_full_rt.bit
}

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
write_checkpoint -force ${static_checkpoint}
close_project

# Re-open project
create_project -in_memory -part ${part}
add_files ${static_checkpoint}
load_all_dcps
link_full_design ${part}
write_checkpoint -force ${checkpoint}
report_utilization -file ${utilization}
report_timing_summary -file ${timing}

# Verify routing is accurate
#pr_verify $checkpoint $static_checkpoint
close_project

# Write bitstream now
open_checkpoint ${checkpoint}

run_flow

write_bitstream -force -file Bitstreams/${config}
