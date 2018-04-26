
####################################################################################
# Generated by Vivado 2017.4 built on 'Fri Dec 15 20:54:30 MST 2017' by 'xbuild'
# Command Used: write_xdc test.xdc
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
current_instance design_1_i/processing_system7_0/inst
create_clock -period 20.000 -name clk_fpga_0 [get_pins {PS7_i/FCLKCLK[0]}]
set_input_jitter clk_fpga_0 0.600
#The clocks are asynchronous, user should constrain them appropriately.#


############################################################################
# I/O STANDARDS and Location Constraints                                   #
############################################################################

#  Enet 0 / mdio / MIO[53]
current_instance -quiet
set_property IOSTANDARD LVCMOS18 [get_ports {FIXED_IO_mio[53]}]
set_property SLEW SLOW [get_ports {FIXED_IO_mio[53]}]
set_property DRIVE 8 [get_ports {FIXED_IO_mio[53]}]
set_property PULLUP true [get_ports {FIXED_IO_mio[53]}]
set_property PIO_DIRECTION BIDIR [get_ports {FIXED_IO_mio[53]}]
#  Enet 0 / mdc / MIO[52]
set_property IOSTANDARD LVCMOS18 [get_ports {FIXED_IO_mio[52]}]
set_property SLEW SLOW [get_ports {FIXED_IO_mio[52]}]
set_property DRIVE 8 [get_ports {FIXED_IO_mio[52]}]
set_property PULLUP true [get_ports {FIXED_IO_mio[52]}]
set_property PIO_DIRECTION OUTPUT [get_ports {FIXED_IO_mio[52]}]
#  GPIO / gpio[51] / MIO[51]
set_property IOSTANDARD LVCMOS18 [get_ports {FIXED_IO_mio[51]}]
set_property SLEW SLOW [get_ports {FIXED_IO_mio[51]}]
set_property DRIVE 8 [get_ports {FIXED_IO_mio[51]}]
set_property PULLUP true [get_ports {FIXED_IO_mio[51]}]
set_property PIO_DIRECTION BIDIR [get_ports {FIXED_IO_mio[51]}]
#  GPIO / gpio[50] / MIO[50]
set_property IOSTANDARD LVCMOS18 [get_ports {FIXED_IO_mio[50]}]
set_property SLEW SLOW [get_ports {FIXED_IO_mio[50]}]
set_property DRIVE 8 [get_ports {FIXED_IO_mio[50]}]
set_property PULLUP true [get_ports {FIXED_IO_mio[50]}]
set_property PIO_DIRECTION BIDIR [get_ports {FIXED_IO_mio[50]}]
#  UART 1 / rx / MIO[49]
set_property IOSTANDARD LVCMOS18 [get_ports {FIXED_IO_mio[49]}]
set_property SLEW SLOW [get_ports {FIXED_IO_mio[49]}]
set_property DRIVE 8 [get_ports {FIXED_IO_mio[49]}]
set_property PULLUP true [get_ports {FIXED_IO_mio[49]}]
set_property PIO_DIRECTION INPUT [get_ports {FIXED_IO_mio[49]}]
#  UART 1 / tx / MIO[48]
set_property IOSTANDARD LVCMOS18 [get_ports {FIXED_IO_mio[48]}]
set_property SLEW SLOW [get_ports {FIXED_IO_mio[48]}]
set_property DRIVE 8 [get_ports {FIXED_IO_mio[48]}]
set_property PULLUP true [get_ports {FIXED_IO_mio[48]}]
set_property PIO_DIRECTION OUTPUT [get_ports {FIXED_IO_mio[48]}]
#  SD 0 / cd / MIO[47]
set_property IOSTANDARD LVCMOS18 [get_ports {FIXED_IO_mio[47]}]
set_property SLEW SLOW [get_ports {FIXED_IO_mio[47]}]
set_property DRIVE 8 [get_ports {FIXED_IO_mio[47]}]
set_property PULLUP true [get_ports {FIXED_IO_mio[47]}]
set_property PIO_DIRECTION INPUT [get_ports {FIXED_IO_mio[47]}]
#  USB Reset / reset / MIO[46]
set_property IOSTANDARD LVCMOS18 [get_ports {FIXED_IO_mio[46]}]
set_property SLEW SLOW [get_ports {FIXED_IO_mio[46]}]
set_property DRIVE 8 [get_ports {FIXED_IO_mio[46]}]
set_property PULLUP true [get_ports {FIXED_IO_mio[46]}]
set_property PIO_DIRECTION OUTPUT [get_ports {FIXED_IO_mio[46]}]
#  SD 0 / data[3] / MIO[45]
set_property IOSTANDARD LVCMOS18 [get_ports {FIXED_IO_mio[45]}]
set_property SLEW SLOW [get_ports {FIXED_IO_mio[45]}]
set_property DRIVE 8 [get_ports {FIXED_IO_mio[45]}]
set_property PULLUP true [get_ports {FIXED_IO_mio[45]}]
set_property PIO_DIRECTION BIDIR [get_ports {FIXED_IO_mio[45]}]
#  SD 0 / data[2] / MIO[44]
set_property IOSTANDARD LVCMOS18 [get_ports {FIXED_IO_mio[44]}]
set_property SLEW SLOW [get_ports {FIXED_IO_mio[44]}]
set_property DRIVE 8 [get_ports {FIXED_IO_mio[44]}]
set_property PULLUP true [get_ports {FIXED_IO_mio[44]}]
set_property PIO_DIRECTION BIDIR [get_ports {FIXED_IO_mio[44]}]
#  SD 0 / data[1] / MIO[43]
set_property IOSTANDARD LVCMOS18 [get_ports {FIXED_IO_mio[43]}]
set_property SLEW SLOW [get_ports {FIXED_IO_mio[43]}]
set_property DRIVE 8 [get_ports {FIXED_IO_mio[43]}]
set_property PULLUP true [get_ports {FIXED_IO_mio[43]}]
set_property PIO_DIRECTION BIDIR [get_ports {FIXED_IO_mio[43]}]
#  SD 0 / data[0] / MIO[42]
set_property IOSTANDARD LVCMOS18 [get_ports {FIXED_IO_mio[42]}]
set_property SLEW SLOW [get_ports {FIXED_IO_mio[42]}]
set_property DRIVE 8 [get_ports {FIXED_IO_mio[42]}]
set_property PULLUP true [get_ports {FIXED_IO_mio[42]}]
set_property PIO_DIRECTION BIDIR [get_ports {FIXED_IO_mio[42]}]
#  SD 0 / cmd / MIO[41]
set_property IOSTANDARD LVCMOS18 [get_ports {FIXED_IO_mio[41]}]
set_property SLEW SLOW [get_ports {FIXED_IO_mio[41]}]
set_property DRIVE 8 [get_ports {FIXED_IO_mio[41]}]
set_property PULLUP true [get_ports {FIXED_IO_mio[41]}]
set_property PIO_DIRECTION BIDIR [get_ports {FIXED_IO_mio[41]}]
#  SD 0 / clk / MIO[40]
set_property IOSTANDARD LVCMOS18 [get_ports {FIXED_IO_mio[40]}]
set_property SLEW SLOW [get_ports {FIXED_IO_mio[40]}]
set_property DRIVE 8 [get_ports {FIXED_IO_mio[40]}]
set_property PULLUP true [get_ports {FIXED_IO_mio[40]}]
set_property PIO_DIRECTION BIDIR [get_ports {FIXED_IO_mio[40]}]
#  USB 0 / data[7] / MIO[39]
set_property IOSTANDARD LVCMOS18 [get_ports {FIXED_IO_mio[39]}]
set_property SLEW FAST [get_ports {FIXED_IO_mio[39]}]
set_property DRIVE 8 [get_ports {FIXED_IO_mio[39]}]
set_property PULLUP true [get_ports {FIXED_IO_mio[39]}]
set_property PIO_DIRECTION BIDIR [get_ports {FIXED_IO_mio[39]}]
#  USB 0 / data[6] / MIO[38]
set_property IOSTANDARD LVCMOS18 [get_ports {FIXED_IO_mio[38]}]
set_property SLEW FAST [get_ports {FIXED_IO_mio[38]}]
set_property DRIVE 8 [get_ports {FIXED_IO_mio[38]}]
set_property PULLUP true [get_ports {FIXED_IO_mio[38]}]
set_property PIO_DIRECTION BIDIR [get_ports {FIXED_IO_mio[38]}]
#  USB 0 / data[5] / MIO[37]
set_property IOSTANDARD LVCMOS18 [get_ports {FIXED_IO_mio[37]}]
set_property SLEW FAST [get_ports {FIXED_IO_mio[37]}]
set_property DRIVE 8 [get_ports {FIXED_IO_mio[37]}]
set_property PULLUP true [get_ports {FIXED_IO_mio[37]}]
set_property PIO_DIRECTION BIDIR [get_ports {FIXED_IO_mio[37]}]
#  USB 0 / clk / MIO[36]
set_property IOSTANDARD LVCMOS18 [get_ports {FIXED_IO_mio[36]}]
set_property SLEW FAST [get_ports {FIXED_IO_mio[36]}]
set_property DRIVE 8 [get_ports {FIXED_IO_mio[36]}]
set_property PULLUP true [get_ports {FIXED_IO_mio[36]}]
set_property PIO_DIRECTION INPUT [get_ports {FIXED_IO_mio[36]}]
#  USB 0 / data[3] / MIO[35]
set_property IOSTANDARD LVCMOS18 [get_ports {FIXED_IO_mio[35]}]
set_property SLEW FAST [get_ports {FIXED_IO_mio[35]}]
set_property DRIVE 8 [get_ports {FIXED_IO_mio[35]}]
set_property PULLUP true [get_ports {FIXED_IO_mio[35]}]
set_property PIO_DIRECTION BIDIR [get_ports {FIXED_IO_mio[35]}]
#  USB 0 / data[2] / MIO[34]
set_property IOSTANDARD LVCMOS18 [get_ports {FIXED_IO_mio[34]}]
set_property SLEW FAST [get_ports {FIXED_IO_mio[34]}]
set_property DRIVE 8 [get_ports {FIXED_IO_mio[34]}]
set_property PULLUP true [get_ports {FIXED_IO_mio[34]}]
set_property PIO_DIRECTION BIDIR [get_ports {FIXED_IO_mio[34]}]
#  USB 0 / data[1] / MIO[33]
set_property IOSTANDARD LVCMOS18 [get_ports {FIXED_IO_mio[33]}]
set_property SLEW FAST [get_ports {FIXED_IO_mio[33]}]
set_property DRIVE 8 [get_ports {FIXED_IO_mio[33]}]
set_property PULLUP true [get_ports {FIXED_IO_mio[33]}]
set_property PIO_DIRECTION BIDIR [get_ports {FIXED_IO_mio[33]}]
#  USB 0 / data[0] / MIO[32]
set_property IOSTANDARD LVCMOS18 [get_ports {FIXED_IO_mio[32]}]
set_property SLEW FAST [get_ports {FIXED_IO_mio[32]}]
set_property DRIVE 8 [get_ports {FIXED_IO_mio[32]}]
set_property PULLUP true [get_ports {FIXED_IO_mio[32]}]
set_property PIO_DIRECTION BIDIR [get_ports {FIXED_IO_mio[32]}]
#  USB 0 / nxt / MIO[31]
set_property IOSTANDARD LVCMOS18 [get_ports {FIXED_IO_mio[31]}]
set_property SLEW FAST [get_ports {FIXED_IO_mio[31]}]
set_property DRIVE 8 [get_ports {FIXED_IO_mio[31]}]
set_property PULLUP true [get_ports {FIXED_IO_mio[31]}]
set_property PIO_DIRECTION INPUT [get_ports {FIXED_IO_mio[31]}]
#  USB 0 / stp / MIO[30]
set_property IOSTANDARD LVCMOS18 [get_ports {FIXED_IO_mio[30]}]
set_property SLEW FAST [get_ports {FIXED_IO_mio[30]}]
set_property DRIVE 8 [get_ports {FIXED_IO_mio[30]}]
set_property PULLUP true [get_ports {FIXED_IO_mio[30]}]
set_property PIO_DIRECTION OUTPUT [get_ports {FIXED_IO_mio[30]}]
#  USB 0 / dir / MIO[29]
set_property IOSTANDARD LVCMOS18 [get_ports {FIXED_IO_mio[29]}]
set_property SLEW FAST [get_ports {FIXED_IO_mio[29]}]
set_property DRIVE 8 [get_ports {FIXED_IO_mio[29]}]
set_property PULLUP true [get_ports {FIXED_IO_mio[29]}]
set_property PIO_DIRECTION INPUT [get_ports {FIXED_IO_mio[29]}]
#  USB 0 / data[4] / MIO[28]
set_property IOSTANDARD LVCMOS18 [get_ports {FIXED_IO_mio[28]}]
set_property SLEW FAST [get_ports {FIXED_IO_mio[28]}]
set_property DRIVE 8 [get_ports {FIXED_IO_mio[28]}]
set_property PULLUP true [get_ports {FIXED_IO_mio[28]}]
set_property PIO_DIRECTION BIDIR [get_ports {FIXED_IO_mio[28]}]
#  Enet 0 / rx_ctl / MIO[27]
set_property IOSTANDARD LVCMOS18 [get_ports {FIXED_IO_mio[27]}]
set_property SLEW FAST [get_ports {FIXED_IO_mio[27]}]
set_property DRIVE 8 [get_ports {FIXED_IO_mio[27]}]
set_property PULLUP true [get_ports {FIXED_IO_mio[27]}]
set_property PIO_DIRECTION INPUT [get_ports {FIXED_IO_mio[27]}]
#  Enet 0 / rxd[3] / MIO[26]
set_property IOSTANDARD LVCMOS18 [get_ports {FIXED_IO_mio[26]}]
set_property SLEW FAST [get_ports {FIXED_IO_mio[26]}]
set_property DRIVE 8 [get_ports {FIXED_IO_mio[26]}]
set_property PULLUP true [get_ports {FIXED_IO_mio[26]}]
set_property PIO_DIRECTION INPUT [get_ports {FIXED_IO_mio[26]}]
#  Enet 0 / rxd[2] / MIO[25]
set_property IOSTANDARD LVCMOS18 [get_ports {FIXED_IO_mio[25]}]
set_property SLEW FAST [get_ports {FIXED_IO_mio[25]}]
set_property DRIVE 8 [get_ports {FIXED_IO_mio[25]}]
set_property PULLUP true [get_ports {FIXED_IO_mio[25]}]
set_property PIO_DIRECTION INPUT [get_ports {FIXED_IO_mio[25]}]
#  Enet 0 / rxd[1] / MIO[24]
set_property IOSTANDARD LVCMOS18 [get_ports {FIXED_IO_mio[24]}]
set_property SLEW FAST [get_ports {FIXED_IO_mio[24]}]
set_property DRIVE 8 [get_ports {FIXED_IO_mio[24]}]
set_property PULLUP true [get_ports {FIXED_IO_mio[24]}]
set_property PIO_DIRECTION INPUT [get_ports {FIXED_IO_mio[24]}]
#  Enet 0 / rxd[0] / MIO[23]
set_property IOSTANDARD LVCMOS18 [get_ports {FIXED_IO_mio[23]}]
set_property SLEW FAST [get_ports {FIXED_IO_mio[23]}]
set_property DRIVE 8 [get_ports {FIXED_IO_mio[23]}]
set_property PULLUP true [get_ports {FIXED_IO_mio[23]}]
set_property PIO_DIRECTION INPUT [get_ports {FIXED_IO_mio[23]}]
#  Enet 0 / rx_clk / MIO[22]
set_property IOSTANDARD LVCMOS18 [get_ports {FIXED_IO_mio[22]}]
set_property SLEW FAST [get_ports {FIXED_IO_mio[22]}]
set_property DRIVE 8 [get_ports {FIXED_IO_mio[22]}]
set_property PULLUP true [get_ports {FIXED_IO_mio[22]}]
set_property PIO_DIRECTION INPUT [get_ports {FIXED_IO_mio[22]}]
#  Enet 0 / tx_ctl / MIO[21]
set_property IOSTANDARD LVCMOS18 [get_ports {FIXED_IO_mio[21]}]
set_property SLEW FAST [get_ports {FIXED_IO_mio[21]}]
set_property DRIVE 8 [get_ports {FIXED_IO_mio[21]}]
set_property PULLUP true [get_ports {FIXED_IO_mio[21]}]
set_property PIO_DIRECTION OUTPUT [get_ports {FIXED_IO_mio[21]}]
#  Enet 0 / txd[3] / MIO[20]
set_property IOSTANDARD LVCMOS18 [get_ports {FIXED_IO_mio[20]}]
set_property SLEW FAST [get_ports {FIXED_IO_mio[20]}]
set_property DRIVE 8 [get_ports {FIXED_IO_mio[20]}]
set_property PULLUP true [get_ports {FIXED_IO_mio[20]}]
set_property PIO_DIRECTION OUTPUT [get_ports {FIXED_IO_mio[20]}]
#  Enet 0 / txd[2] / MIO[19]
set_property IOSTANDARD LVCMOS18 [get_ports {FIXED_IO_mio[19]}]
set_property SLEW FAST [get_ports {FIXED_IO_mio[19]}]
set_property DRIVE 8 [get_ports {FIXED_IO_mio[19]}]
set_property PULLUP true [get_ports {FIXED_IO_mio[19]}]
set_property PIO_DIRECTION OUTPUT [get_ports {FIXED_IO_mio[19]}]
#  Enet 0 / txd[1] / MIO[18]
set_property IOSTANDARD LVCMOS18 [get_ports {FIXED_IO_mio[18]}]
set_property SLEW FAST [get_ports {FIXED_IO_mio[18]}]
set_property DRIVE 8 [get_ports {FIXED_IO_mio[18]}]
set_property PULLUP true [get_ports {FIXED_IO_mio[18]}]
set_property PIO_DIRECTION OUTPUT [get_ports {FIXED_IO_mio[18]}]
#  Enet 0 / txd[0] / MIO[17]
set_property IOSTANDARD LVCMOS18 [get_ports {FIXED_IO_mio[17]}]
set_property SLEW FAST [get_ports {FIXED_IO_mio[17]}]
set_property DRIVE 8 [get_ports {FIXED_IO_mio[17]}]
set_property PULLUP true [get_ports {FIXED_IO_mio[17]}]
set_property PIO_DIRECTION OUTPUT [get_ports {FIXED_IO_mio[17]}]
#  Enet 0 / tx_clk / MIO[16]
set_property IOSTANDARD LVCMOS18 [get_ports {FIXED_IO_mio[16]}]
set_property SLEW FAST [get_ports {FIXED_IO_mio[16]}]
set_property DRIVE 8 [get_ports {FIXED_IO_mio[16]}]
set_property PULLUP true [get_ports {FIXED_IO_mio[16]}]
set_property PIO_DIRECTION OUTPUT [get_ports {FIXED_IO_mio[16]}]
#  GPIO / gpio[15] / MIO[15]
set_property IOSTANDARD LVCMOS33 [get_ports {FIXED_IO_mio[15]}]
set_property SLEW SLOW [get_ports {FIXED_IO_mio[15]}]
set_property DRIVE 8 [get_ports {FIXED_IO_mio[15]}]
set_property PULLUP true [get_ports {FIXED_IO_mio[15]}]
set_property PIO_DIRECTION BIDIR [get_ports {FIXED_IO_mio[15]}]
#  GPIO / gpio[14] / MIO[14]
set_property IOSTANDARD LVCMOS33 [get_ports {FIXED_IO_mio[14]}]
set_property SLEW SLOW [get_ports {FIXED_IO_mio[14]}]
set_property DRIVE 8 [get_ports {FIXED_IO_mio[14]}]
set_property PULLUP true [get_ports {FIXED_IO_mio[14]}]
set_property PIO_DIRECTION BIDIR [get_ports {FIXED_IO_mio[14]}]
#  GPIO / gpio[13] / MIO[13]
set_property IOSTANDARD LVCMOS33 [get_ports {FIXED_IO_mio[13]}]
set_property SLEW SLOW [get_ports {FIXED_IO_mio[13]}]
set_property DRIVE 8 [get_ports {FIXED_IO_mio[13]}]
set_property PULLUP true [get_ports {FIXED_IO_mio[13]}]
set_property PIO_DIRECTION BIDIR [get_ports {FIXED_IO_mio[13]}]
#  GPIO / gpio[12] / MIO[12]
set_property IOSTANDARD LVCMOS33 [get_ports {FIXED_IO_mio[12]}]
set_property SLEW SLOW [get_ports {FIXED_IO_mio[12]}]
set_property DRIVE 8 [get_ports {FIXED_IO_mio[12]}]
set_property PULLUP true [get_ports {FIXED_IO_mio[12]}]
set_property PIO_DIRECTION BIDIR [get_ports {FIXED_IO_mio[12]}]
#  GPIO / gpio[11] / MIO[11]
set_property IOSTANDARD LVCMOS33 [get_ports {FIXED_IO_mio[11]}]
set_property SLEW SLOW [get_ports {FIXED_IO_mio[11]}]
set_property DRIVE 8 [get_ports {FIXED_IO_mio[11]}]
set_property PULLUP true [get_ports {FIXED_IO_mio[11]}]
set_property PIO_DIRECTION BIDIR [get_ports {FIXED_IO_mio[11]}]
#  GPIO / gpio[10] / MIO[10]
set_property IOSTANDARD LVCMOS33 [get_ports {FIXED_IO_mio[10]}]
set_property SLEW SLOW [get_ports {FIXED_IO_mio[10]}]
set_property DRIVE 8 [get_ports {FIXED_IO_mio[10]}]
set_property PULLUP true [get_ports {FIXED_IO_mio[10]}]
set_property PIO_DIRECTION BIDIR [get_ports {FIXED_IO_mio[10]}]
#  GPIO / gpio[9] / MIO[9]
set_property IOSTANDARD LVCMOS33 [get_ports {FIXED_IO_mio[9]}]
set_property SLEW SLOW [get_ports {FIXED_IO_mio[9]}]
set_property DRIVE 8 [get_ports {FIXED_IO_mio[9]}]
set_property PULLUP true [get_ports {FIXED_IO_mio[9]}]
set_property PIO_DIRECTION BIDIR [get_ports {FIXED_IO_mio[9]}]
#  Quad SPI Flash / qspi_fbclk / MIO[8]
set_property IOSTANDARD LVCMOS33 [get_ports {FIXED_IO_mio[8]}]
set_property SLEW SLOW [get_ports {FIXED_IO_mio[8]}]
set_property DRIVE 8 [get_ports {FIXED_IO_mio[8]}]
set_property PIO_DIRECTION OUTPUT [get_ports {FIXED_IO_mio[8]}]
#  GPIO / gpio[7] / MIO[7]
set_property IOSTANDARD LVCMOS33 [get_ports {FIXED_IO_mio[7]}]
set_property SLEW SLOW [get_ports {FIXED_IO_mio[7]}]
set_property DRIVE 8 [get_ports {FIXED_IO_mio[7]}]
set_property PIO_DIRECTION OUTPUT [get_ports {FIXED_IO_mio[7]}]
#  Quad SPI Flash / qspi0_sclk / MIO[6]
set_property IOSTANDARD LVCMOS33 [get_ports {FIXED_IO_mio[6]}]
set_property SLEW SLOW [get_ports {FIXED_IO_mio[6]}]
set_property DRIVE 8 [get_ports {FIXED_IO_mio[6]}]
set_property PIO_DIRECTION OUTPUT [get_ports {FIXED_IO_mio[6]}]
#  Quad SPI Flash / qspi0_io[3]/HOLD_B / MIO[5]
set_property IOSTANDARD LVCMOS33 [get_ports {FIXED_IO_mio[5]}]
set_property SLEW SLOW [get_ports {FIXED_IO_mio[5]}]
set_property DRIVE 8 [get_ports {FIXED_IO_mio[5]}]
set_property PIO_DIRECTION BIDIR [get_ports {FIXED_IO_mio[5]}]
#  Quad SPI Flash / qspi0_io[2] / MIO[4]
set_property IOSTANDARD LVCMOS33 [get_ports {FIXED_IO_mio[4]}]
set_property SLEW SLOW [get_ports {FIXED_IO_mio[4]}]
set_property DRIVE 8 [get_ports {FIXED_IO_mio[4]}]
set_property PIO_DIRECTION BIDIR [get_ports {FIXED_IO_mio[4]}]
#  Quad SPI Flash / qspi0_io[1] / MIO[3]
set_property IOSTANDARD LVCMOS33 [get_ports {FIXED_IO_mio[3]}]
set_property SLEW SLOW [get_ports {FIXED_IO_mio[3]}]
set_property DRIVE 8 [get_ports {FIXED_IO_mio[3]}]
set_property PIO_DIRECTION BIDIR [get_ports {FIXED_IO_mio[3]}]
#  Quad SPI Flash / qspi0_io[0] / MIO[2]
set_property IOSTANDARD LVCMOS33 [get_ports {FIXED_IO_mio[2]}]
set_property SLEW SLOW [get_ports {FIXED_IO_mio[2]}]
set_property DRIVE 8 [get_ports {FIXED_IO_mio[2]}]
set_property PIO_DIRECTION BIDIR [get_ports {FIXED_IO_mio[2]}]
#  Quad SPI Flash / qspi0_ss_b / MIO[1]
set_property IOSTANDARD LVCMOS33 [get_ports {FIXED_IO_mio[1]}]
set_property SLEW SLOW [get_ports {FIXED_IO_mio[1]}]
set_property DRIVE 8 [get_ports {FIXED_IO_mio[1]}]
set_property PULLUP true [get_ports {FIXED_IO_mio[1]}]
set_property PIO_DIRECTION OUTPUT [get_ports {FIXED_IO_mio[1]}]
#  GPIO / gpio[0] / MIO[0]
set_property IOSTANDARD LVCMOS33 [get_ports {FIXED_IO_mio[0]}]
set_property SLEW SLOW [get_ports {FIXED_IO_mio[0]}]
set_property DRIVE 8 [get_ports {FIXED_IO_mio[0]}]
set_property PULLUP true [get_ports {FIXED_IO_mio[0]}]
set_property PIO_DIRECTION BIDIR [get_ports {FIXED_IO_mio[0]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports FIXED_IO_ddr_vrp]
set_property SLEW FAST [get_ports FIXED_IO_ddr_vrp]
set_property PIO_DIRECTION BIDIR [get_ports FIXED_IO_ddr_vrp]
set_property IOSTANDARD SSTL135_T_DCI [get_ports FIXED_IO_ddr_vrn]
set_property SLEW FAST [get_ports FIXED_IO_ddr_vrn]
set_property PIO_DIRECTION BIDIR [get_ports FIXED_IO_ddr_vrn]
set_property IOSTANDARD SSTL135 [get_ports DDR_we_n]
set_property SLEW SLOW [get_ports DDR_we_n]
set_property PIO_DIRECTION OUTPUT [get_ports DDR_we_n]
set_property IOSTANDARD SSTL135 [get_ports DDR_ras_n]
set_property SLEW SLOW [get_ports DDR_ras_n]
set_property PIO_DIRECTION OUTPUT [get_ports DDR_ras_n]
set_property IOSTANDARD SSTL135 [get_ports DDR_odt]
set_property SLEW SLOW [get_ports DDR_odt]
set_property PIO_DIRECTION OUTPUT [get_ports DDR_odt]
set_property IOSTANDARD SSTL135 [get_ports DDR_reset_n]
set_property SLEW FAST [get_ports DDR_reset_n]
set_property PIO_DIRECTION BIDIR [get_ports DDR_reset_n]
set_property IOSTANDARD DIFF_SSTL135_T_DCI [get_ports {DDR_dqs_p[3]}]
set_property SLEW FAST [get_ports {DDR_dqs_p[3]}]
set_property PIO_DIRECTION BIDIR [get_ports {DDR_dqs_p[3]}]
set_property IOSTANDARD DIFF_SSTL135_T_DCI [get_ports {DDR_dqs_p[2]}]
set_property SLEW FAST [get_ports {DDR_dqs_p[2]}]
set_property PIO_DIRECTION BIDIR [get_ports {DDR_dqs_p[2]}]
set_property IOSTANDARD DIFF_SSTL135_T_DCI [get_ports {DDR_dqs_p[1]}]
set_property SLEW FAST [get_ports {DDR_dqs_p[1]}]
set_property PIO_DIRECTION BIDIR [get_ports {DDR_dqs_p[1]}]
set_property IOSTANDARD DIFF_SSTL135_T_DCI [get_ports {DDR_dqs_p[0]}]
set_property SLEW FAST [get_ports {DDR_dqs_p[0]}]
set_property PIO_DIRECTION BIDIR [get_ports {DDR_dqs_p[0]}]
set_property IOSTANDARD DIFF_SSTL135_T_DCI [get_ports {DDR_dqs_n[3]}]
set_property SLEW FAST [get_ports {DDR_dqs_n[3]}]
set_property PIO_DIRECTION BIDIR [get_ports {DDR_dqs_n[3]}]
set_property IOSTANDARD DIFF_SSTL135_T_DCI [get_ports {DDR_dqs_n[2]}]
set_property SLEW FAST [get_ports {DDR_dqs_n[2]}]
set_property PIO_DIRECTION BIDIR [get_ports {DDR_dqs_n[2]}]
set_property IOSTANDARD DIFF_SSTL135_T_DCI [get_ports {DDR_dqs_n[1]}]
set_property SLEW FAST [get_ports {DDR_dqs_n[1]}]
set_property PIO_DIRECTION BIDIR [get_ports {DDR_dqs_n[1]}]
set_property IOSTANDARD DIFF_SSTL135_T_DCI [get_ports {DDR_dqs_n[0]}]
set_property SLEW FAST [get_ports {DDR_dqs_n[0]}]
set_property PIO_DIRECTION BIDIR [get_ports {DDR_dqs_n[0]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {DDR_dq[9]}]
set_property SLEW FAST [get_ports {DDR_dq[9]}]
set_property PIO_DIRECTION BIDIR [get_ports {DDR_dq[9]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {DDR_dq[8]}]
set_property SLEW FAST [get_ports {DDR_dq[8]}]
set_property PIO_DIRECTION BIDIR [get_ports {DDR_dq[8]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {DDR_dq[7]}]
set_property SLEW FAST [get_ports {DDR_dq[7]}]
set_property PIO_DIRECTION BIDIR [get_ports {DDR_dq[7]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {DDR_dq[6]}]
set_property SLEW FAST [get_ports {DDR_dq[6]}]
set_property PIO_DIRECTION BIDIR [get_ports {DDR_dq[6]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {DDR_dq[5]}]
set_property SLEW FAST [get_ports {DDR_dq[5]}]
set_property PIO_DIRECTION BIDIR [get_ports {DDR_dq[5]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {DDR_dq[4]}]
set_property SLEW FAST [get_ports {DDR_dq[4]}]
set_property PIO_DIRECTION BIDIR [get_ports {DDR_dq[4]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {DDR_dq[3]}]
set_property SLEW FAST [get_ports {DDR_dq[3]}]
set_property PIO_DIRECTION BIDIR [get_ports {DDR_dq[3]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {DDR_dq[31]}]
set_property SLEW FAST [get_ports {DDR_dq[31]}]
set_property PIO_DIRECTION BIDIR [get_ports {DDR_dq[31]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {DDR_dq[30]}]
set_property SLEW FAST [get_ports {DDR_dq[30]}]
set_property PIO_DIRECTION BIDIR [get_ports {DDR_dq[30]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {DDR_dq[2]}]
set_property SLEW FAST [get_ports {DDR_dq[2]}]
set_property PIO_DIRECTION BIDIR [get_ports {DDR_dq[2]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {DDR_dq[29]}]
set_property SLEW FAST [get_ports {DDR_dq[29]}]
set_property PIO_DIRECTION BIDIR [get_ports {DDR_dq[29]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {DDR_dq[28]}]
set_property SLEW FAST [get_ports {DDR_dq[28]}]
set_property PIO_DIRECTION BIDIR [get_ports {DDR_dq[28]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {DDR_dq[27]}]
set_property SLEW FAST [get_ports {DDR_dq[27]}]
set_property PIO_DIRECTION BIDIR [get_ports {DDR_dq[27]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {DDR_dq[26]}]
set_property SLEW FAST [get_ports {DDR_dq[26]}]
set_property PIO_DIRECTION BIDIR [get_ports {DDR_dq[26]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {DDR_dq[25]}]
set_property SLEW FAST [get_ports {DDR_dq[25]}]
set_property PIO_DIRECTION BIDIR [get_ports {DDR_dq[25]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {DDR_dq[24]}]
set_property SLEW FAST [get_ports {DDR_dq[24]}]
set_property PIO_DIRECTION BIDIR [get_ports {DDR_dq[24]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {DDR_dq[23]}]
set_property SLEW FAST [get_ports {DDR_dq[23]}]
set_property PIO_DIRECTION BIDIR [get_ports {DDR_dq[23]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {DDR_dq[22]}]
set_property SLEW FAST [get_ports {DDR_dq[22]}]
set_property PIO_DIRECTION BIDIR [get_ports {DDR_dq[22]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {DDR_dq[21]}]
set_property SLEW FAST [get_ports {DDR_dq[21]}]
set_property PIO_DIRECTION BIDIR [get_ports {DDR_dq[21]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {DDR_dq[20]}]
set_property SLEW FAST [get_ports {DDR_dq[20]}]
set_property PIO_DIRECTION BIDIR [get_ports {DDR_dq[20]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {DDR_dq[1]}]
set_property SLEW FAST [get_ports {DDR_dq[1]}]
set_property PIO_DIRECTION BIDIR [get_ports {DDR_dq[1]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {DDR_dq[19]}]
set_property SLEW FAST [get_ports {DDR_dq[19]}]
set_property PIO_DIRECTION BIDIR [get_ports {DDR_dq[19]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {DDR_dq[18]}]
set_property SLEW FAST [get_ports {DDR_dq[18]}]
set_property PIO_DIRECTION BIDIR [get_ports {DDR_dq[18]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {DDR_dq[17]}]
set_property SLEW FAST [get_ports {DDR_dq[17]}]
set_property PIO_DIRECTION BIDIR [get_ports {DDR_dq[17]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {DDR_dq[16]}]
set_property SLEW FAST [get_ports {DDR_dq[16]}]
set_property PIO_DIRECTION BIDIR [get_ports {DDR_dq[16]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {DDR_dq[15]}]
set_property SLEW FAST [get_ports {DDR_dq[15]}]
set_property PIO_DIRECTION BIDIR [get_ports {DDR_dq[15]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {DDR_dq[14]}]
set_property SLEW FAST [get_ports {DDR_dq[14]}]
set_property PIO_DIRECTION BIDIR [get_ports {DDR_dq[14]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {DDR_dq[13]}]
set_property SLEW FAST [get_ports {DDR_dq[13]}]
set_property PIO_DIRECTION BIDIR [get_ports {DDR_dq[13]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {DDR_dq[12]}]
set_property SLEW FAST [get_ports {DDR_dq[12]}]
set_property PIO_DIRECTION BIDIR [get_ports {DDR_dq[12]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {DDR_dq[11]}]
set_property SLEW FAST [get_ports {DDR_dq[11]}]
set_property PIO_DIRECTION BIDIR [get_ports {DDR_dq[11]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {DDR_dq[10]}]
set_property SLEW FAST [get_ports {DDR_dq[10]}]
set_property PIO_DIRECTION BIDIR [get_ports {DDR_dq[10]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {DDR_dq[0]}]
set_property SLEW FAST [get_ports {DDR_dq[0]}]
set_property PIO_DIRECTION BIDIR [get_ports {DDR_dq[0]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {DDR_dm[3]}]
set_property SLEW FAST [get_ports {DDR_dm[3]}]
set_property PIO_DIRECTION BIDIR [get_ports {DDR_dm[3]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {DDR_dm[2]}]
set_property SLEW FAST [get_ports {DDR_dm[2]}]
set_property PIO_DIRECTION BIDIR [get_ports {DDR_dm[2]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {DDR_dm[1]}]
set_property SLEW FAST [get_ports {DDR_dm[1]}]
set_property PIO_DIRECTION BIDIR [get_ports {DDR_dm[1]}]
set_property IOSTANDARD SSTL135_T_DCI [get_ports {DDR_dm[0]}]
set_property SLEW FAST [get_ports {DDR_dm[0]}]
set_property PIO_DIRECTION BIDIR [get_ports {DDR_dm[0]}]
set_property IOSTANDARD SSTL135 [get_ports DDR_cs_n]
set_property SLEW SLOW [get_ports DDR_cs_n]
set_property PIO_DIRECTION OUTPUT [get_ports DDR_cs_n]
set_property IOSTANDARD SSTL135 [get_ports DDR_cke]
set_property SLEW SLOW [get_ports DDR_cke]
set_property PIO_DIRECTION OUTPUT [get_ports DDR_cke]
set_property IOSTANDARD DIFF_SSTL135 [get_ports DDR_ck_p]
set_property SLEW FAST [get_ports DDR_ck_p]
set_property PIO_DIRECTION INPUT [get_ports DDR_ck_p]
set_property IOSTANDARD DIFF_SSTL135 [get_ports DDR_ck_n]
set_property SLEW FAST [get_ports DDR_ck_n]
set_property PIO_DIRECTION INPUT [get_ports DDR_ck_n]
set_property IOSTANDARD SSTL135 [get_ports DDR_cas_n]
set_property SLEW SLOW [get_ports DDR_cas_n]
set_property PIO_DIRECTION OUTPUT [get_ports DDR_cas_n]
set_property IOSTANDARD SSTL135 [get_ports {DDR_ba[2]}]
set_property SLEW SLOW [get_ports {DDR_ba[2]}]
set_property PIO_DIRECTION OUTPUT [get_ports {DDR_ba[2]}]
set_property IOSTANDARD SSTL135 [get_ports {DDR_ba[1]}]
set_property SLEW SLOW [get_ports {DDR_ba[1]}]
set_property PIO_DIRECTION OUTPUT [get_ports {DDR_ba[1]}]
set_property IOSTANDARD SSTL135 [get_ports {DDR_ba[0]}]
set_property SLEW SLOW [get_ports {DDR_ba[0]}]
set_property PIO_DIRECTION OUTPUT [get_ports {DDR_ba[0]}]
set_property IOSTANDARD SSTL135 [get_ports {DDR_addr[9]}]
set_property SLEW SLOW [get_ports {DDR_addr[9]}]
set_property PIO_DIRECTION OUTPUT [get_ports {DDR_addr[9]}]
set_property IOSTANDARD SSTL135 [get_ports {DDR_addr[8]}]
set_property SLEW SLOW [get_ports {DDR_addr[8]}]
set_property PIO_DIRECTION OUTPUT [get_ports {DDR_addr[8]}]
set_property IOSTANDARD SSTL135 [get_ports {DDR_addr[7]}]
set_property SLEW SLOW [get_ports {DDR_addr[7]}]
set_property PIO_DIRECTION OUTPUT [get_ports {DDR_addr[7]}]
set_property IOSTANDARD SSTL135 [get_ports {DDR_addr[6]}]
set_property SLEW SLOW [get_ports {DDR_addr[6]}]
set_property PIO_DIRECTION OUTPUT [get_ports {DDR_addr[6]}]
set_property IOSTANDARD SSTL135 [get_ports {DDR_addr[5]}]
set_property SLEW SLOW [get_ports {DDR_addr[5]}]
set_property PIO_DIRECTION OUTPUT [get_ports {DDR_addr[5]}]
set_property IOSTANDARD SSTL135 [get_ports {DDR_addr[4]}]
set_property SLEW SLOW [get_ports {DDR_addr[4]}]
set_property PIO_DIRECTION OUTPUT [get_ports {DDR_addr[4]}]
set_property IOSTANDARD SSTL135 [get_ports {DDR_addr[3]}]
set_property SLEW SLOW [get_ports {DDR_addr[3]}]
set_property PIO_DIRECTION OUTPUT [get_ports {DDR_addr[3]}]
set_property IOSTANDARD SSTL135 [get_ports {DDR_addr[2]}]
set_property SLEW SLOW [get_ports {DDR_addr[2]}]
set_property PIO_DIRECTION OUTPUT [get_ports {DDR_addr[2]}]
set_property IOSTANDARD SSTL135 [get_ports {DDR_addr[1]}]
set_property SLEW SLOW [get_ports {DDR_addr[1]}]
set_property PIO_DIRECTION OUTPUT [get_ports {DDR_addr[1]}]
set_property IOSTANDARD SSTL135 [get_ports {DDR_addr[14]}]
set_property SLEW SLOW [get_ports {DDR_addr[14]}]
set_property PIO_DIRECTION OUTPUT [get_ports {DDR_addr[14]}]
set_property IOSTANDARD SSTL135 [get_ports {DDR_addr[13]}]
set_property SLEW SLOW [get_ports {DDR_addr[13]}]
set_property PIO_DIRECTION OUTPUT [get_ports {DDR_addr[13]}]
set_property IOSTANDARD SSTL135 [get_ports {DDR_addr[12]}]
set_property SLEW SLOW [get_ports {DDR_addr[12]}]
set_property PIO_DIRECTION OUTPUT [get_ports {DDR_addr[12]}]
set_property IOSTANDARD SSTL135 [get_ports {DDR_addr[11]}]
set_property SLEW SLOW [get_ports {DDR_addr[11]}]
set_property PIO_DIRECTION OUTPUT [get_ports {DDR_addr[11]}]
set_property IOSTANDARD SSTL135 [get_ports {DDR_addr[10]}]
set_property SLEW SLOW [get_ports {DDR_addr[10]}]
set_property PIO_DIRECTION OUTPUT [get_ports {DDR_addr[10]}]
set_property IOSTANDARD SSTL135 [get_ports {DDR_addr[0]}]
set_property SLEW SLOW [get_ports {DDR_addr[0]}]
set_property PIO_DIRECTION OUTPUT [get_ports {DDR_addr[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports FIXED_IO_ps_porb]
set_property SLEW FAST [get_ports FIXED_IO_ps_porb]
set_property IOSTANDARD LVCMOS18 [get_ports FIXED_IO_ps_srstb]
set_property SLEW FAST [get_ports FIXED_IO_ps_srstb]
set_property IOSTANDARD LVCMOS33 [get_ports FIXED_IO_ps_clk]
set_property PACKAGE_PIN N2 [get_ports {DDR_addr[0]}]
set_property PACKAGE_PIN K2 [get_ports {DDR_addr[1]}]
set_property PACKAGE_PIN M3 [get_ports {DDR_addr[2]}]
set_property PACKAGE_PIN K3 [get_ports {DDR_addr[3]}]
set_property PACKAGE_PIN M4 [get_ports {DDR_addr[4]}]
set_property PACKAGE_PIN L1 [get_ports {DDR_addr[5]}]
set_property PACKAGE_PIN L4 [get_ports {DDR_addr[6]}]
set_property PACKAGE_PIN K4 [get_ports {DDR_addr[7]}]
set_property PACKAGE_PIN K1 [get_ports {DDR_addr[8]}]
set_property PACKAGE_PIN J4 [get_ports {DDR_addr[9]}]
set_property PACKAGE_PIN F5 [get_ports {DDR_addr[10]}]
set_property PACKAGE_PIN G4 [get_ports {DDR_addr[11]}]
set_property PACKAGE_PIN E4 [get_ports {DDR_addr[12]}]
set_property PACKAGE_PIN D4 [get_ports {DDR_addr[13]}]
set_property PACKAGE_PIN F4 [get_ports {DDR_addr[14]}]
set_property PACKAGE_PIN L5 [get_ports {DDR_ba[0]}]
set_property PACKAGE_PIN R4 [get_ports {DDR_ba[1]}]
set_property PACKAGE_PIN J5 [get_ports {DDR_ba[2]}]
set_property PACKAGE_PIN P5 [get_ports DDR_cas_n]
set_property PACKAGE_PIN M2 [get_ports DDR_ck_n]
set_property PACKAGE_PIN L2 [get_ports DDR_ck_p]
set_property PACKAGE_PIN N3 [get_ports DDR_cke]
set_property PACKAGE_PIN N1 [get_ports DDR_cs_n]
set_property PACKAGE_PIN A1 [get_ports {DDR_dm[0]}]
set_property PACKAGE_PIN F1 [get_ports {DDR_dm[1]}]
set_property PACKAGE_PIN T1 [get_ports {DDR_dm[2]}]
set_property PACKAGE_PIN Y1 [get_ports {DDR_dm[3]}]
set_property PACKAGE_PIN C3 [get_ports {DDR_dq[0]}]
set_property PACKAGE_PIN B3 [get_ports {DDR_dq[1]}]
set_property PACKAGE_PIN A2 [get_ports {DDR_dq[2]}]
set_property PACKAGE_PIN A4 [get_ports {DDR_dq[3]}]
set_property PACKAGE_PIN D3 [get_ports {DDR_dq[4]}]
set_property PACKAGE_PIN D1 [get_ports {DDR_dq[5]}]
set_property PACKAGE_PIN C1 [get_ports {DDR_dq[6]}]
set_property PACKAGE_PIN E1 [get_ports {DDR_dq[7]}]
set_property PACKAGE_PIN E2 [get_ports {DDR_dq[8]}]
set_property PACKAGE_PIN E3 [get_ports {DDR_dq[9]}]
set_property PACKAGE_PIN G3 [get_ports {DDR_dq[10]}]
set_property PACKAGE_PIN H3 [get_ports {DDR_dq[11]}]
set_property PACKAGE_PIN J3 [get_ports {DDR_dq[12]}]
set_property PACKAGE_PIN H2 [get_ports {DDR_dq[13]}]
set_property PACKAGE_PIN H1 [get_ports {DDR_dq[14]}]
set_property PACKAGE_PIN J1 [get_ports {DDR_dq[15]}]
set_property PACKAGE_PIN P1 [get_ports {DDR_dq[16]}]
set_property PACKAGE_PIN P3 [get_ports {DDR_dq[17]}]
set_property PACKAGE_PIN R3 [get_ports {DDR_dq[18]}]
set_property PACKAGE_PIN R1 [get_ports {DDR_dq[19]}]
set_property PACKAGE_PIN T4 [get_ports {DDR_dq[20]}]
set_property PACKAGE_PIN U4 [get_ports {DDR_dq[21]}]
set_property PACKAGE_PIN U2 [get_ports {DDR_dq[22]}]
set_property PACKAGE_PIN U3 [get_ports {DDR_dq[23]}]
set_property PACKAGE_PIN V1 [get_ports {DDR_dq[24]}]
set_property PACKAGE_PIN Y3 [get_ports {DDR_dq[25]}]
set_property PACKAGE_PIN W1 [get_ports {DDR_dq[26]}]
set_property PACKAGE_PIN Y4 [get_ports {DDR_dq[27]}]
set_property PACKAGE_PIN Y2 [get_ports {DDR_dq[28]}]
set_property PACKAGE_PIN W3 [get_ports {DDR_dq[29]}]
set_property PACKAGE_PIN V2 [get_ports {DDR_dq[30]}]
set_property PACKAGE_PIN V3 [get_ports {DDR_dq[31]}]
set_property PACKAGE_PIN B2 [get_ports {DDR_dqs_n[0]}]
set_property PACKAGE_PIN F2 [get_ports {DDR_dqs_n[1]}]
set_property PACKAGE_PIN T2 [get_ports {DDR_dqs_n[2]}]
set_property PACKAGE_PIN W4 [get_ports {DDR_dqs_n[3]}]
set_property PACKAGE_PIN C2 [get_ports {DDR_dqs_p[0]}]
set_property PACKAGE_PIN G2 [get_ports {DDR_dqs_p[1]}]
set_property PACKAGE_PIN R2 [get_ports {DDR_dqs_p[2]}]
set_property PACKAGE_PIN W5 [get_ports {DDR_dqs_p[3]}]
set_property PACKAGE_PIN N5 [get_ports DDR_odt]
set_property PACKAGE_PIN P4 [get_ports DDR_ras_n]
set_property PACKAGE_PIN B4 [get_ports DDR_reset_n]
set_property PACKAGE_PIN M5 [get_ports DDR_we_n]
set_property PACKAGE_PIN G5 [get_ports FIXED_IO_ddr_vrn]
set_property PACKAGE_PIN H5 [get_ports FIXED_IO_ddr_vrp]
set_property PACKAGE_PIN E6 [get_ports {FIXED_IO_mio[0]}]
set_property PACKAGE_PIN A7 [get_ports {FIXED_IO_mio[1]}]
set_property PACKAGE_PIN B8 [get_ports {FIXED_IO_mio[2]}]
set_property PACKAGE_PIN D6 [get_ports {FIXED_IO_mio[3]}]
set_property PACKAGE_PIN B7 [get_ports {FIXED_IO_mio[4]}]
set_property PACKAGE_PIN A6 [get_ports {FIXED_IO_mio[5]}]
set_property PACKAGE_PIN A5 [get_ports {FIXED_IO_mio[6]}]
set_property PACKAGE_PIN D8 [get_ports {FIXED_IO_mio[7]}]
set_property PACKAGE_PIN D5 [get_ports {FIXED_IO_mio[8]}]
set_property PACKAGE_PIN B5 [get_ports {FIXED_IO_mio[9]}]
set_property PACKAGE_PIN E9 [get_ports {FIXED_IO_mio[10]}]
set_property PACKAGE_PIN C6 [get_ports {FIXED_IO_mio[11]}]
set_property PACKAGE_PIN D9 [get_ports {FIXED_IO_mio[12]}]
set_property PACKAGE_PIN E8 [get_ports {FIXED_IO_mio[13]}]
set_property PACKAGE_PIN C5 [get_ports {FIXED_IO_mio[14]}]
set_property PACKAGE_PIN C8 [get_ports {FIXED_IO_mio[15]}]
set_property PACKAGE_PIN A19 [get_ports {FIXED_IO_mio[16]}]
set_property PACKAGE_PIN E14 [get_ports {FIXED_IO_mio[17]}]
set_property PACKAGE_PIN B18 [get_ports {FIXED_IO_mio[18]}]
set_property PACKAGE_PIN D10 [get_ports {FIXED_IO_mio[19]}]
set_property PACKAGE_PIN A17 [get_ports {FIXED_IO_mio[20]}]
set_property PACKAGE_PIN F14 [get_ports {FIXED_IO_mio[21]}]
set_property PACKAGE_PIN B17 [get_ports {FIXED_IO_mio[22]}]
set_property PACKAGE_PIN D11 [get_ports {FIXED_IO_mio[23]}]
set_property PACKAGE_PIN A16 [get_ports {FIXED_IO_mio[24]}]
set_property PACKAGE_PIN F15 [get_ports {FIXED_IO_mio[25]}]
set_property PACKAGE_PIN A15 [get_ports {FIXED_IO_mio[26]}]
set_property PACKAGE_PIN D13 [get_ports {FIXED_IO_mio[27]}]
set_property PACKAGE_PIN C16 [get_ports {FIXED_IO_mio[28]}]
set_property PACKAGE_PIN C13 [get_ports {FIXED_IO_mio[29]}]
set_property PACKAGE_PIN C15 [get_ports {FIXED_IO_mio[30]}]
set_property PACKAGE_PIN E16 [get_ports {FIXED_IO_mio[31]}]
set_property PACKAGE_PIN A14 [get_ports {FIXED_IO_mio[32]}]
set_property PACKAGE_PIN D15 [get_ports {FIXED_IO_mio[33]}]
set_property PACKAGE_PIN A12 [get_ports {FIXED_IO_mio[34]}]
set_property PACKAGE_PIN F12 [get_ports {FIXED_IO_mio[35]}]
set_property PACKAGE_PIN A11 [get_ports {FIXED_IO_mio[36]}]
set_property PACKAGE_PIN A10 [get_ports {FIXED_IO_mio[37]}]
set_property PACKAGE_PIN E13 [get_ports {FIXED_IO_mio[38]}]
set_property PACKAGE_PIN C18 [get_ports {FIXED_IO_mio[39]}]
set_property PACKAGE_PIN D14 [get_ports {FIXED_IO_mio[40]}]
set_property PACKAGE_PIN C17 [get_ports {FIXED_IO_mio[41]}]
set_property PACKAGE_PIN E12 [get_ports {FIXED_IO_mio[42]}]
set_property PACKAGE_PIN A9 [get_ports {FIXED_IO_mio[43]}]
set_property PACKAGE_PIN F13 [get_ports {FIXED_IO_mio[44]}]
set_property PACKAGE_PIN B15 [get_ports {FIXED_IO_mio[45]}]
set_property PACKAGE_PIN D16 [get_ports {FIXED_IO_mio[46]}]
set_property PACKAGE_PIN B14 [get_ports {FIXED_IO_mio[47]}]
set_property PACKAGE_PIN B12 [get_ports {FIXED_IO_mio[48]}]
set_property PACKAGE_PIN C12 [get_ports {FIXED_IO_mio[49]}]
set_property PACKAGE_PIN B13 [get_ports {FIXED_IO_mio[50]}]
set_property PACKAGE_PIN B9 [get_ports {FIXED_IO_mio[51]}]
set_property PACKAGE_PIN C10 [get_ports {FIXED_IO_mio[52]}]
set_property PACKAGE_PIN C11 [get_ports {FIXED_IO_mio[53]}]
set_property PACKAGE_PIN E7 [get_ports FIXED_IO_ps_clk]
set_property PACKAGE_PIN C7 [get_ports FIXED_IO_ps_porb]
set_property PACKAGE_PIN B10 [get_ports FIXED_IO_ps_srstb]
set_property SLEW FAST [get_ports FIXED_IO_ps_clk]



# Vivado Generated miscellaneous constraints 

#revert back to original instance
current_instance -quiet


# Customization 
set_property IOSTANDARD LVCMOS33 [get_ports [list clk_in]]
set_property IOSTANDARD LVCMOS33 [get_ports [list comp_eq]]
set_property IOSTANDARD LVCMOS33 [get_ports [list comp_gt]]
set_property IOSTANDARD LVCMOS33 [get_ports [list comp_lt]]
set_property IOSTANDARD LVCMOS33 [get_ports [list in_mux_sel]]
set_property IOSTANDARD LVCMOS33 [get_ports [list rst_in]]
set_property IOSTANDARD LVCMOS33 [get_ports [list {out[1]} {out[0]}]]
set_property IOSTANDARD LVCMOS33 [get_ports [list {op_sel[4]} {op_sel[3]} {op_sel[2]} {op_sel[1]} {op_sel[0]}]]
set_property IOSTANDARD LVCMOS33 [get_ports [list {b[1]} {b[0]}]]
set_property IOSTANDARD LVCMOS33 [get_ports [list {a[1]} {a[0]}]]
