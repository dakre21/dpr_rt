# Author: David Akre
# Description: Utilizty script which helps with the assemble and bitstream creation flow

set device "xc7z020"
set part   "clg400"
set speed  "-1"
set part   ${device}${part}${speed}

proc synth_module { variant module rtlDir run.rmSynth } {
  add_module $variant
  set_attribute module $variant moduleName   $module
  set_attribute module $variant vlog         [list $rtlDir/$variant/$variant.v]
  set_attribute module $variant synth        ${run.rmSynth}
}

proc load_all_dcps { } {
  # Add all of the partials generated from synthesis
  add_files ./Synth/add/ADD_synth.dcp
  add_files ./Synth/comp/COMP_synth.dcp
  add_files ./Synth/dec/DEC_synth.dcp
  add_files ./Synth/div/DIV_synth.dcp
  add_files ./Synth/inc/INC_synth.dcp
  add_files ./Synth/mod/MOD_synth.dcp
  add_files ./Synth/mul/MUL_synth.dcp
  add_files ./Synth/mux/MUX2x1_synth.dcp
  add_files ./Synth/reg/REG_synth.dcp
  add_files ./Synth/shl/SHL_synth.dcp
  add_files ./Synth/shr/SHR_synth.dcp
  add_files ./Synth/sub/SUB_synth.dcp

  # Set properties for all loaded checkpoints
  set_property SCOPED_TO_CELLS {add_1} [get_files ./Synth/add/ADD_synth.dcp]
  set_property SCOPED_TO_CELLS {comp_1} [get_files ./Synth/comp/COMP_synth.dcp]
  set_property SCOPED_TO_CELLS {dec_1} [get_files ./Synth/dec/DEC_synth.dcp]
  set_property SCOPED_TO_CELLS {div_1} [get_files ./Synth/div/DIV_synth.dcp]
  set_property SCOPED_TO_CELLS {inc_1} [get_files ./Synth/inc/INC_synth.dcp]
  set_property SCOPED_TO_CELLS {mod_1} [get_files ./Synth/mod/MOD_synth.dcp]
  set_property SCOPED_TO_CELLS {mul_1} [get_files ./Synth/mul/MUL_synth.dcp]
  set_property SCOPED_TO_CELLS {mux_1} [get_files ./Synth/mux/MUX2x1_synth.dcp]
  set_property SCOPED_TO_CELLS {reg_1} [get_files ./Synth/reg/REG_synth.dcp]
  set_property SCOPED_TO_CELLS {shl_1} [get_files ./Synth/shl/SHL_synth.dcp]
  set_property SCOPED_TO_CELLS {shr_1} [get_files ./Synth/shr/SHR_synth.dcp]
  set_property SCOPED_TO_CELLS {sub_1} [get_files ./Synth/sub/SUB_synth.dcp]
}

proc set_all_cells_reconfig { } {
  # Set each module as an RM
  set_property HD.RECONFIGURABLE 1 [get_cells add_1]
  set_property HD.RECONFIGURABLE 1 [get_cells comp_1]
  set_property HD.RECONFIGURABLE 1 [get_cells dec_1]
  set_property HD.RECONFIGURABLE 1 [get_cells div_1]
  set_property HD.RECONFIGURABLE 1 [get_cells inc_1]
  set_property HD.RECONFIGURABLE 1 [get_cells mod_1]
  set_property HD.RECONFIGURABLE 1 [get_cells mul_1]
  set_property HD.RECONFIGURABLE 1 [get_cells mux_1]
  set_property HD.RECONFIGURABLE 1 [get_cells reg_1]
  set_property HD.RECONFIGURABLE 1 [get_cells shl_1]
  set_property HD.RECONFIGURABLE 1 [get_cells shr_1]
  set_property HD.RECONFIGURABLE 1 [get_cells sub_1]
}

proc set_absorbing_cells_reconfig { } {
  # Set each module as an RM
  set_property HD.RECONFIGURABLE 1 [get_cells add_1]
  set_property HD.RECONFIGURABLE 1 [get_cells comp_1]
  set_property HD.RECONFIGURABLE 1 [get_cells div_1]
  set_property HD.RECONFIGURABLE 1 [get_cells mux_1]
  set_property HD.RECONFIGURABLE 1 [get_cells reg_1]
  set_property HD.RECONFIGURABLE 1 [get_cells shl_1]
}

proc link_full_design { part } {
  # Link the design together
  link_design -mode default -reconfig_partitions { add_1 comp_1 dec_1 div_1 inc_1 mod_1 mul_1 mux_1 reg_1 shl_1 shr_1 sub_1 } -part ${part} -top top
}

proc link_partial_design { part } {
  # Link the design together
  link_design -mode default -reconfig_partitions { add_1 comp_1 div_1 mux_1 reg_1 shl_1 } -part ${part} -top top
}

proc run_flow { } {
  # Optimize, place, and route design
  opt_design
  place_design
  route_design
}


