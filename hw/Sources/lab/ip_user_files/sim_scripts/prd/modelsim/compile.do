vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/lib_cdc_v1_0_2
vlib modelsim_lib/msim/pr_decoupler_v1_0_5

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xpm modelsim_lib/msim/xpm
vmap lib_cdc_v1_0_2 modelsim_lib/msim/lib_cdc_v1_0_2
vmap pr_decoupler_v1_0_5 modelsim_lib/msim/pr_decoupler_v1_0_5

vlog -work xil_defaultlib -64 -incr -sv \
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

