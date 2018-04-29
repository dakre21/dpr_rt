# Author: David Akre
# Description: Helper script for PR assembly process

set rt 1
source utils.tcl

proc load_constraints { synth } {
  # Load top constraints
  add_files ./Synth/Static/${synth}
  add_files ./Sources/xdc/top_io.xdc
  set_propert USED_IN {implementation} [get_files ./Sources/xdc/top_io.xdc]
}

# Create project in mem
create_project -in_memory -part ${part}
load_constraints top_synth.dcp

# Follow assemble flow for either RT or Non-rt
if { ${rt} == 0 } {
  load_all_dcps
  link_full_design ${part}
  set_all_cells_reconfig
  write_checkpoint -force ./Checkpoint/top_link_full
} {
  load_all_dcps_partial
  link_partial_design ${part}
  set_absorbing_cells_reconfig
  write_checkpoint -force ./Checkpoint/top_link_partial
}

source create_pblocks.tcl
#source create_bitstreams.tcl
