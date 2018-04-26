# Author: David Akre
# Description: File that handles bitstream generation

set rt 0

# Recreate project
create_project -in_memory -part ${part}

if { rt == 0 } {
  add_files ./Checkpoint/static_route_design_nrt.dcp
  load_all_dcps
  link_full_design
} else {
  # TODO
}

run_flow 

