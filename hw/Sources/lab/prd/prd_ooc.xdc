
# aclk_CLOCK contains aclk which is a clock with frequency 100000000 Hz and period 10.0ns
create_clock -verbose -period 10.0 -name aclk [get_ports aclk]
#set_property HD.CLK_SRC BUFGCTRL_X0Y0 [get_ports aclk]



# Processing interface rp_add
#     vlnv        : xilinx.com:interface:axis_rtl:1.0
#     intf_mode   : master
#     static_mode : master
#     cdc_stages  : 2


# rp_add has CDC
# rp_add_ref_clk_CLOCK contains rp_add_ref_clk which is a clock with frequency 100000000 Hz and period 10.0ns
create_clock  -verbose -period 10.0 -name rp_add_ref_clk [get_ports rp_add_ref_clk]
#     set_property HD.CLK_SRC BUFGCTRL_X0Y1 [get_ports rp_add_ref_clk]
# Processing interface rp_add ...done


# Processing interface rp_comp
#     vlnv        : xilinx.com:interface:axis_rtl:1.0
#     intf_mode   : master
#     static_mode : master
#     cdc_stages  : 2


# rp_comp has CDC
# rp_comp_ref_clk_CLOCK contains rp_comp_ref_clk which is a clock with frequency 100000000 Hz and period 10.0ns
create_clock  -verbose -period 10.0 -name rp_comp_ref_clk [get_ports rp_comp_ref_clk]
#     set_property HD.CLK_SRC BUFGCTRL_X0Y2 [get_ports rp_comp_ref_clk]
# Processing interface rp_comp ...done


# Processing interface rp_dec
#     vlnv        : xilinx.com:interface:axis_rtl:1.0
#     intf_mode   : master
#     static_mode : master
#     cdc_stages  : 2


# rp_dec has CDC
# rp_dec_ref_clk_CLOCK contains rp_dec_ref_clk which is a clock with frequency 100000000 Hz and period 10.0ns
create_clock  -verbose -period 10.0 -name rp_dec_ref_clk [get_ports rp_dec_ref_clk]
#     set_property HD.CLK_SRC BUFGCTRL_X0Y3 [get_ports rp_dec_ref_clk]
# Processing interface rp_dec ...done


# Processing interface rp_div
#     vlnv        : xilinx.com:interface:axis_rtl:1.0
#     intf_mode   : master
#     static_mode : master
#     cdc_stages  : 2


# rp_div has CDC
# rp_div_ref_clk_CLOCK contains rp_div_ref_clk which is a clock with frequency 100000000 Hz and period 10.0ns
create_clock  -verbose -period 10.0 -name rp_div_ref_clk [get_ports rp_div_ref_clk]
#     set_property HD.CLK_SRC BUFGCTRL_X0Y4 [get_ports rp_div_ref_clk]
# Processing interface rp_div ...done


# Processing interface rp_inc
#     vlnv        : xilinx.com:interface:axis_rtl:1.0
#     intf_mode   : master
#     static_mode : master
#     cdc_stages  : 2


# rp_inc has CDC
# rp_inc_ref_clk_CLOCK contains rp_inc_ref_clk which is a clock with frequency 100000000 Hz and period 10.0ns
create_clock  -verbose -period 10.0 -name rp_inc_ref_clk [get_ports rp_inc_ref_clk]
#     set_property HD.CLK_SRC BUFGCTRL_X0Y5 [get_ports rp_inc_ref_clk]
# Processing interface rp_inc ...done


# Processing interface rp_mod
#     vlnv        : xilinx.com:interface:axis_rtl:1.0
#     intf_mode   : master
#     static_mode : master
#     cdc_stages  : 2


# rp_mod has CDC
# rp_mod_ref_clk_CLOCK contains rp_mod_ref_clk which is a clock with frequency 100000000 Hz and period 10.0ns
create_clock  -verbose -period 10.0 -name rp_mod_ref_clk [get_ports rp_mod_ref_clk]
#     set_property HD.CLK_SRC BUFGCTRL_X0Y6 [get_ports rp_mod_ref_clk]
# Processing interface rp_mod ...done


# Processing interface rp_mul
#     vlnv        : xilinx.com:interface:axis_rtl:1.0
#     intf_mode   : master
#     static_mode : master
#     cdc_stages  : 2


# rp_mul has CDC
# rp_mul_ref_clk_CLOCK contains rp_mul_ref_clk which is a clock with frequency 100000000 Hz and period 10.0ns
create_clock  -verbose -period 10.0 -name rp_mul_ref_clk [get_ports rp_mul_ref_clk]
#     set_property HD.CLK_SRC BUFGCTRL_X0Y7 [get_ports rp_mul_ref_clk]
# Processing interface rp_mul ...done


# Processing interface rp_mux
#     vlnv        : xilinx.com:interface:axis_rtl:1.0
#     intf_mode   : master
#     static_mode : master
#     cdc_stages  : 2


# rp_mux has CDC
# rp_mux_ref_clk_CLOCK contains rp_mux_ref_clk which is a clock with frequency 100000000 Hz and period 10.0ns
create_clock  -verbose -period 10.0 -name rp_mux_ref_clk [get_ports rp_mux_ref_clk]
#     set_property HD.CLK_SRC BUFGCTRL_X0Y8 [get_ports rp_mux_ref_clk]
# Processing interface rp_mux ...done


# Processing interface rp_reg
#     vlnv        : xilinx.com:interface:axis_rtl:1.0
#     intf_mode   : master
#     static_mode : master
#     cdc_stages  : 2


# rp_reg has CDC
# rp_reg_ref_clk_CLOCK contains rp_reg_ref_clk which is a clock with frequency 100000000 Hz and period 10.0ns
create_clock  -verbose -period 10.0 -name rp_reg_ref_clk [get_ports rp_reg_ref_clk]
#     set_property HD.CLK_SRC BUFGCTRL_X0Y9 [get_ports rp_reg_ref_clk]
# Processing interface rp_reg ...done


# Processing interface rp_shl
#     vlnv        : xilinx.com:interface:axis_rtl:1.0
#     intf_mode   : master
#     static_mode : master
#     cdc_stages  : 2


# rp_shl has CDC
# rp_shl_ref_clk_CLOCK contains rp_shl_ref_clk which is a clock with frequency 100000000 Hz and period 10.0ns
create_clock  -verbose -period 10.0 -name rp_shl_ref_clk [get_ports rp_shl_ref_clk]
#     set_property HD.CLK_SRC BUFGCTRL_X0Y10 [get_ports rp_shl_ref_clk]
# Processing interface rp_shl ...done


# Processing interface rp_shr
#     vlnv        : xilinx.com:interface:axis_rtl:1.0
#     intf_mode   : master
#     static_mode : master
#     cdc_stages  : 2


# rp_shr has CDC
# rp_shr_ref_clk_CLOCK contains rp_shr_ref_clk which is a clock with frequency 100000000 Hz and period 10.0ns
create_clock  -verbose -period 10.0 -name rp_shr_ref_clk [get_ports rp_shr_ref_clk]
#     set_property HD.CLK_SRC BUFGCTRL_X0Y11 [get_ports rp_shr_ref_clk]
# Processing interface rp_shr ...done


# Processing interface rp_sub
#     vlnv        : xilinx.com:interface:axis_rtl:1.0
#     intf_mode   : master
#     static_mode : master
#     cdc_stages  : 2


# rp_sub has CDC
# rp_sub_ref_clk_CLOCK contains rp_sub_ref_clk which is a clock with frequency 100000000 Hz and period 10.0ns
create_clock  -verbose -period 10.0 -name rp_sub_ref_clk [get_ports rp_sub_ref_clk]
#     set_property HD.CLK_SRC BUFGCTRL_X0Y12 [get_ports rp_sub_ref_clk]
# Processing interface rp_sub ...done


# End of File


