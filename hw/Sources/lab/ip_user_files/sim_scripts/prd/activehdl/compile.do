vlib work
vlib activehdl

vlib activehdl/xil_defaultlib
vlib activehdl/xpm
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/pr_decoupler_v1_0_5

vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap pr_decoupler_v1_0_5 activehdl/pr_decoupler_v1_0_5

vlog -work xil_defaultlib  -sv2k12 \
"/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
"/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93 \
"/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../ipstatic/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work pr_decoupler_v1_0_5 -93 \
"../../../ipstatic/hdl/pr_decoupler_v1_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../prd/prd_prd.vhd" \
"../../../../prd/sim/prd.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

