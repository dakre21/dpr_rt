# Author: David Akre
# Description: TCL script to help with creating pblocks

# NOTE: Used my own heuristics to create these pbocks (only req I had was 80% or greater CLB usage)
# Created after sourcing assemble.tcl and then creating pblocks from floorplan to fit RR area

# Create Blob Merge pblock
startgroup
create_pblock pblock_bm
resize_pblock pblock_bm -add {SLICE_X2Y0:SLICE_X49Y49 DSP48_X0Y0:DSP48_X2Y19 RAMB18_X0Y0:RAMB18_X2Y19 RAMB36_X0Y0:RAMB36_X2Y9}
add_cells_to_pblock pblock_bm [get_cells [list bm]] -clear_locs
endgroup
set_property RESET_AFTER_RECONFIG true [get_pblocks pblock_bm] 
set_property SNAPPING_MODE ON [get_pblocks pblock_bm]

# Create DiffEq1 pblock
startgroup
create_pblock pblock_dq1
resize_pblock pblock_dq1 -add {SLICE_X80Y101:SLICE_X113Y149 DSP48_X3Y42:DSP48_X4Y59 RAMB18_X4Y42:RAMB18_X5Y59 RAMB36_X4Y21:RAMB36_X5Y29}
add_cells_to_pblock pblock_dq1 [get_cells [list dq1]] -clear_locs
endgroup
set_property RESET_AFTER_RECONFIG true [get_pblocks pblock_dq1]
set_property SNAPPING_MODE ON [get_pblocks pblock_dq1]

# Create Sha pblock
startgroup
create_pblock pblock_sha
resize_pblock pblock_sha -add {SLICE_X80Y0:SLICE_X113Y50 DSP48_X3Y0:DSP48_X4Y19 RAMB18_X4Y0:RAMB18_X5Y19 RAMB36_X4Y0:RAMB36_X5Y9}
add_cells_to_pblock pblock_sha [get_cells [list sha]] -clear_locs
endgroup
set_property RESET_AFTER_RECONFIG true [get_pblocks pblock_sha]
set_property SNAPPING_MODE ON [get_pblocks pblock_sha]

