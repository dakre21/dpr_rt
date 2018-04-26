# Author: David Akre
# Description: Helper script for PR assembly process

set rt     0
set device "xc7z020"
set part   "clg400"
set speed  "-1"
set part   ${device}${part}${speed}

# Create project in mem
create_project -in_memory -part ${part}

# Add xdc to project
add_files ./Sources/xdc/top_io.xdc
set_propert USED_IN {implementation} [get_files ./Sources/xdc/top_io.xdc]

# Add all of the partials generated from synthesis
add_files ./Synth/Static/top_synth.dcp
add_files ./Synth/blob_merge/RLE_BlobMerging_synth.dcp
add_files ./Synth/diffeq1/diffeq_paj_convert_synth.dcp
add_files ./Synth/diffeq2/diffeq_f_systemC_synth.dcp
add_files ./Synth/sha/sha1_synth.dcp

# Set properties for all loaded checkpoints
set_property SCOPED_TO_CELLS {bm} [get_files ./Synth/blob_merge/RLE_BlobMerging_synth.dcp]
set_property SCOPED_TO_CELLS {dq1} [get_files ./Synth/diffeq1/diffeq_paj_convert_synth.dcp]
#set_property SCOPED_TO_CELLS {dq2} [get_files ./Synth/diffeq2/diffeq_f_systemC_synth.dcp]
set_property SCOPED_TO_CELLS {sha} [get_files ./Synth/sha/sha1_synth.dcp]

# Link the design together
link_design -mode default -reconfig_partitions {bm dq1 dq2 sha} -part ${part} -top top

# Set each module as an RM
set_property HD.RECONFIGURABLE 1 [get_cells bm]
set_property HD.RECONFIGURABLE 1 [get_cells dq1]
#set_property HD.RECONFIGURABLE 1 [get_cells dq2]
set_property HD.RECONFIGURABLE 1 [get_cells sha]

# Save off configuration
write_checkpoint -force ./Checkpoint/top_link_bm_dq1_dq2_sha

# Create pblocks
source create_pblocks.tcl
