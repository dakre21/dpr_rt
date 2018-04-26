
####################################################################################
# Generated by Vivado 2017.4 built on 'Fri Dec 15 20:54:30 MST 2017' by 'xbuild'
# Command Used: write_xdc -force ./Sources/xdc/top_all_nrt.xdc
####################################################################################


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
# Clock constraints                                                        #
############################################################################
#The clocks are asynchronous, user should constrain them appropriately.#


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
resize_pblock [get_pblocks pblock_add_1] -add {SLICE_X26Y135:SLICE_X31Y149}
resize_pblock [get_pblocks pblock_add_1] -add {RAMB18_X2Y54:RAMB18_X2Y59}
resize_pblock [get_pblocks pblock_add_1] -add {RAMB36_X2Y27:RAMB36_X2Y29}
set_property RESET_AFTER_RECONFIG true [get_pblocks pblock_add_1]
set_property SNAPPING_MODE ON [get_pblocks pblock_add_1]
create_pblock pblock_comp_1
add_cells_to_pblock [get_pblocks pblock_comp_1] [get_cells -quiet [list comp_1]]
resize_pblock [get_pblocks pblock_comp_1] -add {SLICE_X50Y139:SLICE_X55Y149}
resize_pblock [get_pblocks pblock_comp_1] -add {RAMB18_X3Y56:RAMB18_X3Y59}
resize_pblock [get_pblocks pblock_comp_1] -add {RAMB36_X3Y28:RAMB36_X3Y29}
set_property RESET_AFTER_RECONFIG true [get_pblocks pblock_comp_1]
set_property SNAPPING_MODE ON [get_pblocks pblock_comp_1]
create_pblock pblock_dec_1
add_cells_to_pblock [get_pblocks pblock_dec_1] [get_cells -quiet [list dec_1]]
resize_pblock [get_pblocks pblock_dec_1] -add {SLICE_X80Y137:SLICE_X87Y149}
set_property RESET_AFTER_RECONFIG true [get_pblocks pblock_dec_1]
set_property SNAPPING_MODE ON [get_pblocks pblock_dec_1]
create_pblock pblock_div_1
add_cells_to_pblock [get_pblocks pblock_div_1] [get_cells -quiet [list div_1]]
resize_pblock [get_pblocks pblock_div_1] -add {SLICE_X96Y137:SLICE_X103Y148}
resize_pblock [get_pblocks pblock_div_1] -add {DSP48_X4Y56:DSP48_X4Y57}
set_property RESET_AFTER_RECONFIG true [get_pblocks pblock_div_1]
set_property SNAPPING_MODE ON [get_pblocks pblock_div_1]
create_pblock pblock_inc_1
add_cells_to_pblock [get_pblocks pblock_inc_1] [get_cells -quiet [list inc_1]]
resize_pblock [get_pblocks pblock_inc_1] -add {SLICE_X108Y139:SLICE_X113Y148}
set_property RESET_AFTER_RECONFIG true [get_pblocks pblock_inc_1]
set_property SNAPPING_MODE ON [get_pblocks pblock_inc_1]
create_pblock pblock_mod_1
add_cells_to_pblock [get_pblocks pblock_mod_1] [get_cells -quiet [list mod_1]]
resize_pblock [get_pblocks pblock_mod_1] -add {SLICE_X38Y102:SLICE_X49Y115}
set_property RESET_AFTER_RECONFIG true [get_pblocks pblock_mod_1]
set_property SNAPPING_MODE ON [get_pblocks pblock_mod_1]
create_pblock pblock_mul_1
add_cells_to_pblock [get_pblocks pblock_mul_1] [get_cells -quiet [list mul_1]]
resize_pblock [get_pblocks pblock_mul_1] -add {SLICE_X58Y102:SLICE_X67Y115}
set_property RESET_AFTER_RECONFIG true [get_pblocks pblock_mul_1]
set_property SNAPPING_MODE ON [get_pblocks pblock_mul_1]
create_pblock pblock_mux_1
add_cells_to_pblock [get_pblocks pblock_mux_1] [get_cells -quiet [list mux_1]]
resize_pblock [get_pblocks pblock_mux_1] -add {SLICE_X90Y103:SLICE_X93Y113}
resize_pblock [get_pblocks pblock_mux_1] -add {RAMB18_X4Y42:RAMB18_X4Y43}
resize_pblock [get_pblocks pblock_mux_1] -add {RAMB36_X4Y21:RAMB36_X4Y21}
set_property RESET_AFTER_RECONFIG true [get_pblocks pblock_mux_1]
set_property SNAPPING_MODE ON [get_pblocks pblock_mux_1]
create_pblock pblock_reg_1
add_cells_to_pblock [get_pblocks pblock_reg_1] [get_cells -quiet [list reg_1]]
resize_pblock [get_pblocks pblock_reg_1] -add {SLICE_X26Y84:SLICE_X35Y99}
resize_pblock [get_pblocks pblock_reg_1] -add {RAMB18_X2Y34:RAMB18_X2Y39}
resize_pblock [get_pblocks pblock_reg_1] -add {RAMB36_X2Y17:RAMB36_X2Y19}
set_property RESET_AFTER_RECONFIG true [get_pblocks pblock_reg_1]
set_property SNAPPING_MODE ON [get_pblocks pblock_reg_1]
create_pblock pblock_shl_1
add_cells_to_pblock [get_pblocks pblock_shl_1] [get_cells -quiet [list shl_1]]
resize_pblock [get_pblocks pblock_shl_1] -add {SLICE_X0Y34:SLICE_X11Y48}
resize_pblock [get_pblocks pblock_shl_1] -add {RAMB18_X0Y14:RAMB18_X0Y17}
resize_pblock [get_pblocks pblock_shl_1] -add {RAMB36_X0Y7:RAMB36_X0Y8}
set_property RESET_AFTER_RECONFIG true [get_pblocks pblock_shl_1]
set_property SNAPPING_MODE ON [get_pblocks pblock_shl_1]
create_pblock pblock_shr_1
add_cells_to_pblock [get_pblocks pblock_shr_1] [get_cells -quiet [list shr_1]]
resize_pblock [get_pblocks pblock_shr_1] -add {SLICE_X34Y0:SLICE_X47Y18}
resize_pblock [get_pblocks pblock_shr_1] -add {DSP48_X2Y0:DSP48_X2Y5}
set_property RESET_AFTER_RECONFIG true [get_pblocks pblock_shr_1]
set_property SNAPPING_MODE ON [get_pblocks pblock_shr_1]
create_pblock pblock_sub_1
add_cells_to_pblock [get_pblocks pblock_sub_1] [get_cells -quiet [list sub_1]]
resize_pblock [get_pblocks pblock_sub_1] -add {SLICE_X50Y34:SLICE_X57Y50}
resize_pblock [get_pblocks pblock_sub_1] -add {RAMB18_X3Y14:RAMB18_X3Y19}
resize_pblock [get_pblocks pblock_sub_1] -add {RAMB36_X3Y7:RAMB36_X3Y9}
set_property RESET_AFTER_RECONFIG true [get_pblocks pblock_sub_1]
set_property SNAPPING_MODE ON [get_pblocks pblock_sub_1]

# User Generated miscellaneous constraints 


# Vivado Generated miscellaneous constraints 

#revert back to original instance
current_instance -quiet