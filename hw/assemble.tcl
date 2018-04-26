# Author: David Akre
# Description: Helper script for PR assembly process

source utils.tcl

# Create project in mem
create_project -in_memory -part ${part}

# Load top constraints
add_files ./Synth/Static/top_synth.dcp
add_files ./Sources/xdc/top_io.xdc
set_propert USED_IN {implementation} [get_files ./Sources/xdc/top_io.xdc]

# Follow assemble flow for either RT or Non-rt
if { $rt == 0 } {
  load_all_dcps
  link_full_design
  set_all_cells_reconfig

  # Save off configuration
  write_checkpoint -force ./Checkpoint/top_link_full

  source nrt/create_pblocks_nrt.tcl
  source nrt/create_bitstreams_nrt.tcl
} else {
  # TODO
}
