vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xpm
vlib questa_lib/msim/lib_cdc_v1_0_2
vlib questa_lib/msim/pr_decoupler_v1_0_5

vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xpm questa_lib/msim/xpm
vmap lib_cdc_v1_0_2 questa_lib/msim/lib_cdc_v1_0_2
vmap pr_decoupler_v1_0_5 questa_lib/msim/pr_decoupler_v1_0_5

vlog -work xil_defaultlib -64 -sv \
"/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
"/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -64 -93 \
"/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../ipstatic/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work pr_decoupler_v1_0_5 -64 -93 \
"../../../ipstatic/hdl/pr_decoupler_v1_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../../prd/prd_prd.vhd" \
"../../../../prd/sim/prd.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

