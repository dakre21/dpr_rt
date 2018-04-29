# Author: David Akre
# Description: Helper script for PR assembly process

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
load_all_dcps
link_full_design ${part}
set_all_cells_reconfig

# Save off configuration
write_checkpoint -force ./Checkpoint/top_link_full

source create_pblocks.tcl
source create_bitstreams.tcl
