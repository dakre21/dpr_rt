
####################################################################################
# Generated by Vivado 2017.4 built on 'Fri Dec 15 20:54:30 MST 2017' by 'xbuild'
# Command Used: write_xdc -force ./Sources/xdc/top_all_rt.xdc
####################################################################################


####################################################################################
# Constraints from file : 'processing_system7_0.xdc'
####################################################################################

############################################################################
##
##  Xilinx, Inc. 2006            www.xilinx.com
############################################################################
##  File name :       ps7_constraints.xdc
##
##  Details :     Constraints file
##                    FPGA family:       zynq
##                    FPGA:              xc7z020clg400-1
##                    Device Size:        xc7z020
##                    Package:            clg400
##                    Speedgrade:         -1
##
##
############################################################################
############################################################################
############################################################################
# Clock constraints                                                        #
############################################################################
current_instance processing_system7_0_1/inst
create_clock -period 20.000 -name clk_fpga_0 [get_pins {PS7_i/FCLKCLK[0]}]
set_input_jitter clk_fpga_0 0.600
#The clocks are asynchronous, user should constrain them appropriately.#


############################################################################
# I/O STANDARDS and Location Constraints                                   #
############################################################################

#  GPIO / gpio[53] / MIO[53]
#  GPIO / gpio[52] / MIO[52]
#  GPIO / gpio[51] / MIO[51]
#  GPIO / gpio[50] / MIO[50]
#  GPIO / gpio[49] / MIO[49]
#  GPIO / gpio[48] / MIO[48]
#  GPIO / gpio[47] / MIO[47]
#  GPIO / gpio[46] / MIO[46]
#  SD 0 / data[3] / MIO[45]
#  SD 0 / data[2] / MIO[44]
#  SD 0 / data[1] / MIO[43]
#  SD 0 / data[0] / MIO[42]
#  SD 0 / cmd / MIO[41]
#  SD 0 / clk / MIO[40]
#  GPIO / gpio[39] / MIO[39]
#  GPIO / gpio[38] / MIO[38]
#  GPIO / gpio[37] / MIO[37]
#  GPIO / gpio[36] / MIO[36]
#  GPIO / gpio[35] / MIO[35]
#  GPIO / gpio[34] / MIO[34]
#  GPIO / gpio[33] / MIO[33]
#  GPIO / gpio[32] / MIO[32]
#  GPIO / gpio[31] / MIO[31]
#  GPIO / gpio[30] / MIO[30]
#  GPIO / gpio[29] / MIO[29]
#  GPIO / gpio[28] / MIO[28]
#  Enet 0 / rx_ctl / MIO[27]
#  Enet 0 / rxd[3] / MIO[26]
#  Enet 0 / rxd[2] / MIO[25]
#  Enet 0 / rxd[1] / MIO[24]
#  Enet 0 / rxd[0] / MIO[23]
#  Enet 0 / rx_clk / MIO[22]
#  Enet 0 / tx_ctl / MIO[21]
#  Enet 0 / txd[3] / MIO[20]
#  Enet 0 / txd[2] / MIO[19]
#  Enet 0 / txd[1] / MIO[18]
#  Enet 0 / txd[0] / MIO[17]
#  Enet 0 / tx_clk / MIO[16]
#  GPIO / gpio[15] / MIO[15]
#  GPIO / gpio[14] / MIO[14]
#  GPIO / gpio[13] / MIO[13]
#  GPIO / gpio[12] / MIO[12]
#  UART 0 / tx / MIO[11]
#  UART 0 / rx / MIO[10]
#  GPIO / gpio[9] / MIO[9]
#  GPIO / gpio[8] / MIO[8]
#  GPIO / gpio[7] / MIO[7]
#  GPIO / gpio[6] / MIO[6]
#  GPIO / gpio[5] / MIO[5]
#  GPIO / gpio[4] / MIO[4]
#  GPIO / gpio[3] / MIO[3]
#  GPIO / gpio[2] / MIO[2]
#  GPIO / gpio[1] / MIO[1]
#  GPIO / gpio[0] / MIO[0]




####################################################################################
# Constraints from file : 'top_io.xdc'
####################################################################################


####################################################################################
# Generated by Vivado 2017.4 built on 'Fri Dec 15 20:54:30 MST 2017' by 'xbuild'
####################################################################################


####################################################################################
# Constraints from file : 'design_1_processing_system7_0_0.xdc'
####################################################################################

############################################################################
##
##  Xilinx, Inc. 2006            www.xilinx.com
############################################################################
##  File name :       ps7_constraints.xdc
##
##  Details :     Constraints file
##                    FPGA family:       zynq
##                    FPGA:              xc7z020clg400-1
##                    Device Size:        xc7z020
##                    Package:            clg400
##                    Speedgrade:         -1
##
##
############################################################################
############################################################################
############################################################################

############################################################################
# I/O STANDARDS and Location Constraints                                   #
############################################################################

#  Enet 0 / mdio / MIO[53]
#  Enet 0 / mdc / MIO[52]
#  GPIO / gpio[51] / MIO[51]
#  GPIO / gpio[50] / MIO[50]
#  UART 1 / rx / MIO[49]
#  UART 1 / tx / MIO[48]
#  SD 0 / cd / MIO[47]
#  USB Reset / reset / MIO[46]
#  SD 0 / data[3] / MIO[45]
#  SD 0 / data[2] / MIO[44]
#  SD 0 / data[1] / MIO[43]
#  SD 0 / data[0] / MIO[42]
#  SD 0 / cmd / MIO[41]
#  SD 0 / clk / MIO[40]
#  USB 0 / data[7] / MIO[39]
#  USB 0 / data[6] / MIO[38]
#  USB 0 / data[5] / MIO[37]
#  USB 0 / clk / MIO[36]
#  USB 0 / data[3] / MIO[35]
#  USB 0 / data[2] / MIO[34]
#  USB 0 / data[1] / MIO[33]
#  USB 0 / data[0] / MIO[32]
#  USB 0 / nxt / MIO[31]
#  USB 0 / stp / MIO[30]
#  USB 0 / dir / MIO[29]
#  USB 0 / data[4] / MIO[28]
#  Enet 0 / rx_ctl / MIO[27]
#  Enet 0 / rxd[3] / MIO[26]
#  Enet 0 / rxd[2] / MIO[25]
#  Enet 0 / rxd[1] / MIO[24]
#  Enet 0 / rxd[0] / MIO[23]
#  Enet 0 / rx_clk / MIO[22]
#  Enet 0 / tx_ctl / MIO[21]
#  Enet 0 / txd[3] / MIO[20]
#  Enet 0 / txd[2] / MIO[19]
#  Enet 0 / txd[1] / MIO[18]
#  Enet 0 / txd[0] / MIO[17]
#  Enet 0 / tx_clk / MIO[16]
#  GPIO / gpio[15] / MIO[15]
#  GPIO / gpio[14] / MIO[14]
#  GPIO / gpio[13] / MIO[13]
#  GPIO / gpio[12] / MIO[12]
#  GPIO / gpio[11] / MIO[11]
#  GPIO / gpio[10] / MIO[10]
#  GPIO / gpio[9] / MIO[9]
#  Quad SPI Flash / qspi_fbclk / MIO[8]
#  GPIO / gpio[7] / MIO[7]
#  Quad SPI Flash / qspi0_sclk / MIO[6]
#  Quad SPI Flash / qspi0_io[3]/HOLD_B / MIO[5]
#  Quad SPI Flash / qspi0_io[2] / MIO[4]
#  Quad SPI Flash / qspi0_io[1] / MIO[3]
#  Quad SPI Flash / qspi0_io[0] / MIO[2]
#  Quad SPI Flash / qspi0_ss_b / MIO[1]
#  GPIO / gpio[0] / MIO[0]






# Customization
current_instance -quiet
set_property IOSTANDARD LVCMOS33 [get_ports comp_eq]
set_property IOSTANDARD LVCMOS33 [get_ports comp_gt]
set_property IOSTANDARD LVCMOS33 [get_ports comp_lt]
set_property IOSTANDARD LVCMOS33 [get_ports {op_sel[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {op_sel[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {op_sel[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {op_sel[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {op_sel[4]}]

set_property IOSTANDARD LVCMOS33 [get_ports {icap_o[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {icap_o[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {icap_o[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {icap_o[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {icap_o[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {icap_o[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {icap_o[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {icap_o[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {icap_o[8]}]
set_property IOSTANDARD LVCMOS33 [get_ports {icap_o[9]}]
set_property IOSTANDARD LVCMOS33 [get_ports {icap_o[10]}]
set_property IOSTANDARD LVCMOS33 [get_ports {icap_o[11]}]
set_property IOSTANDARD LVCMOS33 [get_ports {icap_o[12]}]
set_property IOSTANDARD LVCMOS33 [get_ports {icap_o[13]}]
set_property IOSTANDARD LVCMOS33 [get_ports {icap_o[14]}]
set_property IOSTANDARD LVCMOS33 [get_ports {icap_o[15]}]
set_property IOSTANDARD LVCMOS33 [get_ports {icap_o[16]}]
set_property IOSTANDARD LVCMOS33 [get_ports {icap_o[17]}]
set_property IOSTANDARD LVCMOS33 [get_ports {icap_o[18]}]
set_property IOSTANDARD LVCMOS33 [get_ports {icap_o[19]}]
set_property IOSTANDARD LVCMOS33 [get_ports {icap_o[20]}]
set_property IOSTANDARD LVCMOS33 [get_ports {icap_o[21]}]
set_property IOSTANDARD LVCMOS33 [get_ports {icap_o[22]}]
set_property IOSTANDARD LVCMOS33 [get_ports {icap_o[23]}]
set_property IOSTANDARD LVCMOS33 [get_ports {icap_o[24]}]
set_property IOSTANDARD LVCMOS33 [get_ports {icap_o[25]}]
set_property IOSTANDARD LVCMOS33 [get_ports {icap_o[26]}]
set_property IOSTANDARD LVCMOS33 [get_ports {icap_o[27]}]
set_property IOSTANDARD LVCMOS33 [get_ports {icap_o[28]}]
set_property IOSTANDARD LVCMOS33 [get_ports {icap_o[29]}]
set_property IOSTANDARD LVCMOS33 [get_ports {icap_o[30]}]
set_property IOSTANDARD LVCMOS33 [get_ports {icap_o[31]}]
set_property IOSTANDARD LVCMOS33 [get_ports {icap_i[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {icap_i[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {icap_i[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {icap_i[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {icap_i[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {icap_i[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {icap_i[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {icap_i[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {icap_i[8]}]
set_property IOSTANDARD LVCMOS33 [get_ports {icap_i[9]}]
set_property IOSTANDARD LVCMOS33 [get_ports {icap_i[10]}]
set_property IOSTANDARD LVCMOS33 [get_ports {icap_i[11]}]
set_property IOSTANDARD LVCMOS33 [get_ports {icap_i[12]}]
set_property IOSTANDARD LVCMOS33 [get_ports {icap_i[13]}]
set_property IOSTANDARD LVCMOS33 [get_ports {icap_i[14]}]
set_property IOSTANDARD LVCMOS33 [get_ports {icap_i[15]}]
set_property IOSTANDARD LVCMOS33 [get_ports {icap_i[16]}]
set_property IOSTANDARD LVCMOS33 [get_ports {icap_i[17]}]
set_property IOSTANDARD LVCMOS33 [get_ports {icap_i[18]}]
set_property IOSTANDARD LVCMOS33 [get_ports {icap_i[19]}]
set_property IOSTANDARD LVCMOS33 [get_ports {icap_i[20]}]
set_property IOSTANDARD LVCMOS33 [get_ports {icap_i[21]}]
set_property IOSTANDARD LVCMOS33 [get_ports {icap_i[22]}]
set_property IOSTANDARD LVCMOS33 [get_ports {icap_i[23]}]
set_property IOSTANDARD LVCMOS33 [get_ports {icap_i[24]}]
set_property IOSTANDARD LVCMOS33 [get_ports {icap_i[25]}]
set_property IOSTANDARD LVCMOS33 [get_ports {icap_i[26]}]
set_property IOSTANDARD LVCMOS33 [get_ports {icap_i[27]}]
set_property IOSTANDARD LVCMOS33 [get_ports {icap_i[28]}]
set_property IOSTANDARD LVCMOS33 [get_ports {icap_i[29]}]
set_property IOSTANDARD LVCMOS33 [get_ports {icap_i[30]}]
set_property IOSTANDARD LVCMOS33 [get_ports {icap_i[31]}]

set_property IOSTANDARD LVCMOS33 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports icap_reset]
set_property IOSTANDARD LVCMOS33 [get_ports mux_sel]
set_property IOSTANDARD LVCMOS33 [get_ports rst]

set_property IOSTANDARD LVCMOS33 [get_ports {a[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {a[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {a[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {a[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {a[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {a[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {a[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {a[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {b[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {b[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {b[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {b[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {b[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {b[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {b[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {b[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {out[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {out[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {out[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {out[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {out[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {out[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {out[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {out[7]}]


#set_property DONT_TOUCH true [get_cells prc_1/U0/i_vsm_vs_main/current_state[1]_i_16]
#set_property DONT_TOUCH true [get_cells axi_em_ctrl_1/U0/EMC_CTRL_I/MEM_STATE_MACHINE_I/wlast_reg_i_3]
#set_property DONT_TOUCH true [get_cells prc_1/U0/i_cp0/icap_o_preswap[24]_i_16]
#set_property DONT_TOUCH true [get_cells]


# User Generated miscellaneous constraints 

set_property HD.RECONFIGURABLE true [get_cells add_1]
set_property HD.RECONFIGURABLE true [get_cells comp_1]
set_property HD.RECONFIGURABLE true [get_cells dec_1]
set_property HD.RECONFIGURABLE true [get_cells div_1]
set_property HD.RECONFIGURABLE true [get_cells inc_1]
set_property HD.RECONFIGURABLE true [get_cells mod_1]
set_property HD.RECONFIGURABLE true [get_cells mul_1]
set_property HD.RECONFIGURABLE true [get_cells mux_1]
set_property HD.RECONFIGURABLE true [get_cells reg_1]
set_property HD.RECONFIGURABLE true [get_cells shl_1]
set_property HD.RECONFIGURABLE true [get_cells shr_1]
set_property HD.RECONFIGURABLE true [get_cells sub_1]

# User Generated physical constraints 

create_pblock pblock_add_1
add_cells_to_pblock [get_pblocks pblock_add_1] [get_cells -quiet [list add_1]]
resize_pblock [get_pblocks pblock_add_1] -add {SLICE_X26Y101:SLICE_X35Y149}
resize_pblock [get_pblocks pblock_add_1] -add {RAMB18_X2Y42:RAMB18_X2Y59}
resize_pblock [get_pblocks pblock_add_1] -add {RAMB36_X2Y21:RAMB36_X2Y29}
set_property RESET_AFTER_RECONFIG true [get_pblocks pblock_add_1]
set_property SNAPPING_MODE ON [get_pblocks pblock_add_1]
create_pblock pblock_comp_1
add_cells_to_pblock [get_pblocks pblock_comp_1] [get_cells -quiet [list comp_1]]
resize_pblock [get_pblocks pblock_comp_1] -add {SLICE_X38Y101:SLICE_X49Y149}
set_property RESET_AFTER_RECONFIG true [get_pblocks pblock_comp_1]
set_property SNAPPING_MODE ON [get_pblocks pblock_comp_1]
create_pblock pblock_dec_1
add_cells_to_pblock [get_pblocks pblock_dec_1] [get_cells -quiet [list dec_1]]
resize_pblock [get_pblocks pblock_dec_1] -add {SLICE_X52Y101:SLICE_X61Y149}
resize_pblock [get_pblocks pblock_dec_1] -add {RAMB18_X3Y42:RAMB18_X3Y59}
resize_pblock [get_pblocks pblock_dec_1] -add {RAMB36_X3Y21:RAMB36_X3Y29}
set_property RESET_AFTER_RECONFIG true [get_pblocks pblock_dec_1]
set_property SNAPPING_MODE ON [get_pblocks pblock_dec_1]
create_pblock pblock_div_1
add_cells_to_pblock [get_pblocks pblock_div_1] [get_cells -quiet [list div_1]]
resize_pblock [get_pblocks pblock_div_1] -add {SLICE_X88Y102:SLICE_X97Y149}
resize_pblock [get_pblocks pblock_div_1] -add {DSP48_X3Y42:DSP48_X3Y59}
resize_pblock [get_pblocks pblock_div_1] -add {RAMB18_X4Y42:RAMB18_X4Y59}
resize_pblock [get_pblocks pblock_div_1] -add {RAMB36_X4Y21:RAMB36_X4Y29}
set_property RESET_AFTER_RECONFIG true [get_pblocks pblock_div_1]
set_property SNAPPING_MODE ON [get_pblocks pblock_div_1]
create_pblock pblock_mod_1
add_cells_to_pblock [get_pblocks pblock_mod_1] [get_cells -quiet [list mod_1]]
resize_pblock [get_pblocks pblock_mod_1] -add {SLICE_X26Y0:SLICE_X37Y49}
resize_pblock [get_pblocks pblock_mod_1] -add {DSP48_X2Y0:DSP48_X2Y19}
resize_pblock [get_pblocks pblock_mod_1] -add {RAMB18_X2Y0:RAMB18_X2Y19}
resize_pblock [get_pblocks pblock_mod_1] -add {RAMB36_X2Y0:RAMB36_X2Y9}
set_property RESET_AFTER_RECONFIG true [get_pblocks pblock_mod_1]
set_property SNAPPING_MODE ON [get_pblocks pblock_mod_1]
create_pblock pblock_mul_1
add_cells_to_pblock [get_pblocks pblock_mul_1] [get_cells -quiet [list mul_1]]
resize_pblock [get_pblocks pblock_mul_1] -add {SLICE_X90Y0:SLICE_X99Y49}
resize_pblock [get_pblocks pblock_mul_1] -add {DSP48_X3Y0:DSP48_X3Y19}
set_property RESET_AFTER_RECONFIG true [get_pblocks pblock_mul_1]
set_property SNAPPING_MODE ON [get_pblocks pblock_mul_1]
create_pblock pblock_reg_1
add_cells_to_pblock [get_pblocks pblock_reg_1] [get_cells -quiet [list reg_1]]
resize_pblock [get_pblocks pblock_reg_1] -add {SLICE_X0Y0:SLICE_X9Y49}
resize_pblock [get_pblocks pblock_reg_1] -add {RAMB18_X0Y0:RAMB18_X0Y19}
resize_pblock [get_pblocks pblock_reg_1] -add {RAMB36_X0Y0:RAMB36_X0Y9}
set_property RESET_AFTER_RECONFIG true [get_pblocks pblock_reg_1]
set_property SNAPPING_MODE ON [get_pblocks pblock_reg_1]
create_pblock pblock_inc_1
add_cells_to_pblock [get_pblocks pblock_inc_1] [get_cells -quiet [list inc_1]]
resize_pblock [get_pblocks pblock_inc_1] -add {SLICE_X50Y0:SLICE_X59Y49}
resize_pblock [get_pblocks pblock_inc_1] -add {RAMB18_X3Y0:RAMB18_X3Y19}
resize_pblock [get_pblocks pblock_inc_1] -add {RAMB36_X3Y0:RAMB36_X3Y9}
set_property RESET_AFTER_RECONFIG true [get_pblocks pblock_inc_1]
set_property SNAPPING_MODE ON [get_pblocks pblock_inc_1]
create_pblock pblock_mux_1
add_cells_to_pblock [get_pblocks pblock_mux_1] [get_cells -quiet [list mux_1]]
resize_pblock [get_pblocks pblock_mux_1] -add {SLICE_X66Y0:SLICE_X75Y49}
set_property RESET_AFTER_RECONFIG true [get_pblocks pblock_mux_1]
set_property SNAPPING_MODE ON [get_pblocks pblock_mux_1]
create_pblock pblock_sub_1
add_cells_to_pblock [get_pblocks pblock_sub_1] [get_cells -quiet [list sub_1]]
resize_pblock [get_pblocks pblock_sub_1] -add {SLICE_X104Y0:SLICE_X113Y49}
resize_pblock [get_pblocks pblock_sub_1] -add {RAMB18_X5Y0:RAMB18_X5Y19}
resize_pblock [get_pblocks pblock_sub_1] -add {RAMB36_X5Y0:RAMB36_X5Y9}
set_property RESET_AFTER_RECONFIG true [get_pblocks pblock_sub_1]
set_property SNAPPING_MODE ON [get_pblocks pblock_sub_1]
create_pblock pblock_shl_1
add_cells_to_pblock [get_pblocks pblock_shl_1] [get_cells -quiet [list shl_1]]
resize_pblock [get_pblocks pblock_shl_1] -add {SLICE_X102Y102:SLICE_X109Y149}
resize_pblock [get_pblocks pblock_shl_1] -add {RAMB18_X5Y42:RAMB18_X5Y59}
resize_pblock [get_pblocks pblock_shl_1] -add {RAMB36_X5Y21:RAMB36_X5Y29}
set_property RESET_AFTER_RECONFIG true [get_pblocks pblock_shl_1]
set_property SNAPPING_MODE ON [get_pblocks pblock_shl_1]
create_pblock pblock_shr_1
add_cells_to_pblock [get_pblocks pblock_shr_1] [get_cells -quiet [list shr_1]]
resize_pblock [get_pblocks pblock_shr_1] -add {SLICE_X78Y1:SLICE_X87Y49}
set_property RESET_AFTER_RECONFIG true [get_pblocks pblock_shr_1]
set_property SNAPPING_MODE ON [get_pblocks pblock_shr_1]

# User Generated miscellaneous constraints 


# Vivado Generated miscellaneous constraints 

#revert back to original instance
current_instance -quiet
