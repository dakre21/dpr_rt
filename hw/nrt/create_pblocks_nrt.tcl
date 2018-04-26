# Author: David Akre
# Description: TCL script to help with creating pblocks

# NOTE: Used my own heuristics to create these pbocks (only req I had was 80% or greater CLB usage)
# Created after sourcing assemble.tcl and then creating pblocks from floorplan to fit RR area

set timing_nrt ./Implement/top_timing_summary_pblock_nrt.rpt
set utilization_nrt ./Implement/top_utilization_pblock_nrt.rpt
set checkpoint_nrt ./Implement/top_route_design_nrt.dcp

# Create Pblocks
startgroup
create_pblock pblock_add_1
resize_pblock pblock_add_1 -add {SLICE_X26Y135:SLICE_X31Y149 RAMB18_X2Y54:RAMB18_X2Y59 RAMB36_X2Y27:RAMB36_X2Y29}
add_cells_to_pblock pblock_add_1 [get_cells [list add_1]] -clear_locs
endgroup
startgroup
create_pblock pblock_comp_1
resize_pblock pblock_comp_1 -add {SLICE_X50Y139:SLICE_X55Y149 RAMB18_X3Y56:RAMB18_X3Y59 RAMB36_X3Y28:RAMB36_X3Y29}
add_cells_to_pblock pblock_comp_1 [get_cells [list comp_1]] -clear_locs
endgroup
startgroup
create_pblock pblock_dec_1
resize_pblock pblock_dec_1 -add SLICE_X80Y137:SLICE_X87Y149
add_cells_to_pblock pblock_dec_1 [get_cells [list dec_1]] -clear_locs
endgroup
startgroup
create_pblock pblock_div_1
resize_pblock pblock_div_1 -add {SLICE_X96Y137:SLICE_X103Y148 DSP48_X4Y56:DSP48_X4Y57}
add_cells_to_pblock pblock_div_1 [get_cells [list div_1]] -clear_locs
endgroup
startgroup
create_pblock pblock_inc_1
resize_pblock pblock_inc_1 -add SLICE_X108Y139:SLICE_X113Y148
add_cells_to_pblock pblock_inc_1 [get_cells [list inc_1]] -clear_locs
endgroup
startgroup
create_pblock pblock_mod_1
resize_pblock pblock_mod_1 -add SLICE_X38Y102:SLICE_X49Y115
add_cells_to_pblock pblock_mod_1 [get_cells [list mod_1]] -clear_locs
endgroup
startgroup
create_pblock pblock_mul_1
resize_pblock pblock_mul_1 -add SLICE_X58Y102:SLICE_X67Y115
add_cells_to_pblock pblock_mul_1 [get_cells [list mul_1]] -clear_locs
endgroup
startgroup
create_pblock pblock_mux_1
resize_pblock pblock_mux_1 -add {SLICE_X90Y103:SLICE_X93Y113 RAMB18_X4Y42:RAMB18_X4Y43 RAMB36_X4Y21:RAMB36_X4Y21}
add_cells_to_pblock pblock_mux_1 [get_cells [list mux_1]] -clear_locs
endgroup
startgroup
create_pblock pblock_reg_1
resize_pblock pblock_reg_1 -add {SLICE_X26Y84:SLICE_X35Y99 RAMB18_X2Y34:RAMB18_X2Y39 RAMB36_X2Y17:RAMB36_X2Y19}
add_cells_to_pblock pblock_reg_1 [get_cells [list reg_1]] -clear_locs
endgroup
startgroup
create_pblock pblock_shl_1
resize_pblock pblock_shl_1 -add {SLICE_X0Y34:SLICE_X11Y48 RAMB18_X0Y14:RAMB18_X0Y17 RAMB36_X0Y7:RAMB36_X0Y8}
add_cells_to_pblock pblock_shl_1 [get_cells [list shl_1]] -clear_locs
endgroup
startgroup
create_pblock pblock_shr_1
resize_pblock pblock_shr_1 -add {SLICE_X34Y0:SLICE_X47Y18 DSP48_X2Y0:DSP48_X2Y5}
add_cells_to_pblock pblock_shr_1 [get_cells [list shr_1]] -clear_locs
endgroup
startgroup
create_pblock pblock_sub_1
resize_pblock pblock_sub_1 -add {SLICE_X50Y34:SLICE_X57Y50 RAMB18_X3Y14:RAMB18_X3Y19 RAMB36_X3Y7:RAMB36_X3Y9}
add_cells_to_pblock pblock_sub_1 [get_cells [list sub_1]] -clear_locs
endgroup

# Set reset after reconfig and snapping mode for all pblocks
set_property RESET_AFTER_RECONFIG true [get_pblocks pblock_add_1] 
set_property SNAPPING_MODE ON [get_pblocks pblock_add_1]

set_property RESET_AFTER_RECONFIG true [get_pblocks pblock_comp_1] 
set_property SNAPPING_MODE ON [get_pblocks pblock_comp_1]

set_property RESET_AFTER_RECONFIG true [get_pblocks pblock_dec_1] 
set_property SNAPPING_MODE ON [get_pblocks pblock_dec_1]

set_property RESET_AFTER_RECONFIG true [get_pblocks pblock_div_1] 
set_property SNAPPING_MODE ON [get_pblocks pblock_div_1]

set_property RESET_AFTER_RECONFIG true [get_pblocks pblock_inc_1] 
set_property SNAPPING_MODE ON [get_pblocks pblock_inc_1]

set_property RESET_AFTER_RECONFIG true [get_pblocks pblock_mod_1] 
set_property SNAPPING_MODE ON [get_pblocks pblock_mod_1]

set_property RESET_AFTER_RECONFIG true [get_pblocks pblock_mul_1] 
set_property SNAPPING_MODE ON [get_pblocks pblock_mul_1]

set_property RESET_AFTER_RECONFIG true [get_pblocks pblock_mux_1] 
set_property SNAPPING_MODE ON [get_pblocks pblock_mux_1]

set_property RESET_AFTER_RECONFIG true [get_pblocks pblock_reg_1] 
set_property SNAPPING_MODE ON [get_pblocks pblock_reg_1]

set_property RESET_AFTER_RECONFIG true [get_pblocks pblock_shl_1] 
set_property SNAPPING_MODE ON [get_pblocks pblock_shl_1]

set_property RESET_AFTER_RECONFIG true [get_pblocks pblock_shr_1] 
set_property SNAPPING_MODE ON [get_pblocks pblock_shr_1]

set_property RESET_AFTER_RECONFIG true [get_pblocks pblock_sub_1] 
set_property SNAPPING_MODE ON [get_pblocks pblock_sub_1]

# Run design rule check
report_drc -name drc_1 -ruledecks {opt_checks router_checks placer_checks}

# Write to constraints file
write_xdc -force ./Sources/xdc/top_all_nrt.xdc

# Run flow
run_flow 

# Save off results
write_checkpoint -force $checkpoint_nrt
report_utilization -file $utilization_nrt
report_timing_summary -file $timing_nrt
