-makelib ies_lib/xil_defaultlib -sv \
  "/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
  "/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
-endlib
-makelib ies_lib/xpm \
  "/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xbip_utils_v3_0_8 \
  "../../../ipstatic/hdl/xbip_utils_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/axi_utils_v2_0_4 \
  "../../../ipstatic/hdl/axi_utils_v2_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xbip_pipe_v3_0_4 \
  "../../../ipstatic/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/lib_cdc_v1_0_2 \
  "../../../ipstatic/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/lib_pkg_v1_0_2 \
  "../../../ipstatic/hdl/lib_pkg_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/lib_srl_fifo_v1_0_2 \
  "../../../ipstatic/hdl/lib_srl_fifo_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/c_reg_fd_v12_0_4 \
  "../../../ipstatic/hdl/c_reg_fd_v12_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xbip_dsp48_wrapper_v3_0_4 \
  "../../../ipstatic/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xbip_dsp48_addsub_v3_0_4 \
  "../../../ipstatic/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xbip_addsub_v3_0_4 \
  "../../../ipstatic/hdl/xbip_addsub_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/c_addsub_v12_0_11 \
  "../../../ipstatic/hdl/c_addsub_v12_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/c_gate_bit_v12_0_4 \
  "../../../ipstatic/hdl/c_gate_bit_v12_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xbip_counter_v3_0_4 \
  "../../../ipstatic/hdl/xbip_counter_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/c_counter_binary_v12_0_11 \
  "../../../ipstatic/hdl/c_counter_binary_v12_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/c_compare_v12_0_4 \
  "../../../ipstatic/hdl/c_compare_v12_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/prc_v1_2_1 \
  "../../../ipstatic/hdl/prc_v1_2_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../prc/prc_prc_table_pkg.vhd" \
  "../../../../prc/prc_prc_vsm_vs_main.vhd" \
  "../../../../prc/prc_prc_fetch.vhd" \
  "../../../../prc/prc_prc_icap_if_0.vhd" \
  "../../../../prc/prc_prc.vhd" \
  "../../../../prc/sim/prc.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

