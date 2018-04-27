-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
-- Date        : Thu Apr 26 21:30:11 2018
-- Host        : dakre-VirtualBox running 64-bit Ubuntu 16.04.3 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ prd_stub.vhdl
-- Design      : prd
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    s_rp_add_TVALID : out STD_LOGIC;
    rp_rp_add_TVALID : in STD_LOGIC;
    s_rp_add_TREADY : in STD_LOGIC;
    rp_rp_add_TREADY : out STD_LOGIC;
    s_rp_add_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rp_rp_add_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_rp_add_TLAST : out STD_LOGIC;
    rp_rp_add_TLAST : in STD_LOGIC;
    rp_add_ref_clk : in STD_LOGIC;
    rp_add_decouple_status : out STD_LOGIC;
    s_rp_comp_TVALID : out STD_LOGIC;
    rp_rp_comp_TVALID : in STD_LOGIC;
    s_rp_comp_TREADY : in STD_LOGIC;
    rp_rp_comp_TREADY : out STD_LOGIC;
    s_rp_comp_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rp_rp_comp_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_rp_comp_TLAST : out STD_LOGIC;
    rp_rp_comp_TLAST : in STD_LOGIC;
    rp_comp_ref_clk : in STD_LOGIC;
    rp_comp_decouple_status : out STD_LOGIC;
    s_rp_dec_TVALID : out STD_LOGIC;
    rp_rp_dec_TVALID : in STD_LOGIC;
    s_rp_dec_TREADY : in STD_LOGIC;
    rp_rp_dec_TREADY : out STD_LOGIC;
    s_rp_dec_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rp_rp_dec_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_rp_dec_TLAST : out STD_LOGIC;
    rp_rp_dec_TLAST : in STD_LOGIC;
    rp_dec_ref_clk : in STD_LOGIC;
    rp_dec_decouple_status : out STD_LOGIC;
    s_rp_div_TVALID : out STD_LOGIC;
    rp_rp_div_TVALID : in STD_LOGIC;
    s_rp_div_TREADY : in STD_LOGIC;
    rp_rp_div_TREADY : out STD_LOGIC;
    s_rp_div_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rp_rp_div_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_rp_div_TLAST : out STD_LOGIC;
    rp_rp_div_TLAST : in STD_LOGIC;
    rp_div_ref_clk : in STD_LOGIC;
    rp_div_decouple_status : out STD_LOGIC;
    s_rp_inc_TVALID : out STD_LOGIC;
    rp_rp_inc_TVALID : in STD_LOGIC;
    s_rp_inc_TREADY : in STD_LOGIC;
    rp_rp_inc_TREADY : out STD_LOGIC;
    s_rp_inc_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rp_rp_inc_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_rp_inc_TLAST : out STD_LOGIC;
    rp_rp_inc_TLAST : in STD_LOGIC;
    rp_inc_ref_clk : in STD_LOGIC;
    rp_inc_decouple_status : out STD_LOGIC;
    s_rp_mod_TVALID : out STD_LOGIC;
    rp_rp_mod_TVALID : in STD_LOGIC;
    s_rp_mod_TREADY : in STD_LOGIC;
    rp_rp_mod_TREADY : out STD_LOGIC;
    s_rp_mod_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rp_rp_mod_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_rp_mod_TLAST : out STD_LOGIC;
    rp_rp_mod_TLAST : in STD_LOGIC;
    rp_mod_ref_clk : in STD_LOGIC;
    rp_mod_decouple_status : out STD_LOGIC;
    s_rp_mul_TVALID : out STD_LOGIC;
    rp_rp_mul_TVALID : in STD_LOGIC;
    s_rp_mul_TREADY : in STD_LOGIC;
    rp_rp_mul_TREADY : out STD_LOGIC;
    s_rp_mul_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rp_rp_mul_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_rp_mul_TLAST : out STD_LOGIC;
    rp_rp_mul_TLAST : in STD_LOGIC;
    rp_mul_ref_clk : in STD_LOGIC;
    rp_mul_decouple_status : out STD_LOGIC;
    s_rp_mux_TVALID : out STD_LOGIC;
    rp_rp_mux_TVALID : in STD_LOGIC;
    s_rp_mux_TREADY : in STD_LOGIC;
    rp_rp_mux_TREADY : out STD_LOGIC;
    s_rp_mux_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rp_rp_mux_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_rp_mux_TLAST : out STD_LOGIC;
    rp_rp_mux_TLAST : in STD_LOGIC;
    rp_mux_ref_clk : in STD_LOGIC;
    rp_mux_decouple_status : out STD_LOGIC;
    s_rp_reg_TVALID : out STD_LOGIC;
    rp_rp_reg_TVALID : in STD_LOGIC;
    s_rp_reg_TREADY : in STD_LOGIC;
    rp_rp_reg_TREADY : out STD_LOGIC;
    s_rp_reg_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rp_rp_reg_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_rp_reg_TLAST : out STD_LOGIC;
    rp_rp_reg_TLAST : in STD_LOGIC;
    rp_reg_ref_clk : in STD_LOGIC;
    rp_reg_decouple_status : out STD_LOGIC;
    s_rp_shl_TVALID : out STD_LOGIC;
    rp_rp_shl_TVALID : in STD_LOGIC;
    s_rp_shl_TREADY : in STD_LOGIC;
    rp_rp_shl_TREADY : out STD_LOGIC;
    s_rp_shl_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rp_rp_shl_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_rp_shl_TLAST : out STD_LOGIC;
    rp_rp_shl_TLAST : in STD_LOGIC;
    rp_shl_ref_clk : in STD_LOGIC;
    rp_shl_decouple_status : out STD_LOGIC;
    s_rp_shr_TVALID : out STD_LOGIC;
    rp_rp_shr_TVALID : in STD_LOGIC;
    s_rp_shr_TREADY : in STD_LOGIC;
    rp_rp_shr_TREADY : out STD_LOGIC;
    s_rp_shr_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rp_rp_shr_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_rp_shr_TLAST : out STD_LOGIC;
    rp_rp_shr_TLAST : in STD_LOGIC;
    rp_shr_ref_clk : in STD_LOGIC;
    rp_shr_decouple_status : out STD_LOGIC;
    s_rp_sub_TVALID : out STD_LOGIC;
    rp_rp_sub_TVALID : in STD_LOGIC;
    s_rp_sub_TREADY : in STD_LOGIC;
    rp_rp_sub_TREADY : out STD_LOGIC;
    s_rp_sub_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rp_rp_sub_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_rp_sub_TLAST : out STD_LOGIC;
    rp_rp_sub_TLAST : in STD_LOGIC;
    rp_sub_ref_clk : in STD_LOGIC;
    rp_sub_decouple_status : out STD_LOGIC;
    decouple : in STD_LOGIC;
    decouple_status : out STD_LOGIC;
    aclk : in STD_LOGIC;
    s_axi_reg_awaddr : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_reg_awvalid : in STD_LOGIC;
    s_axi_reg_awready : out STD_LOGIC;
    s_axi_reg_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_reg_wvalid : in STD_LOGIC;
    s_axi_reg_wready : out STD_LOGIC;
    s_axi_reg_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_reg_bvalid : out STD_LOGIC;
    s_axi_reg_bready : in STD_LOGIC;
    s_axi_reg_araddr : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_reg_arvalid : in STD_LOGIC;
    s_axi_reg_arready : out STD_LOGIC;
    s_axi_reg_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_reg_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_reg_rvalid : out STD_LOGIC;
    s_axi_reg_rready : in STD_LOGIC;
    s_axi_reg_aresetn : in STD_LOGIC;
    m_axis_status_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_status_tvalid : out STD_LOGIC;
    s_axis_ctrl_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_ctrl_tvalid : in STD_LOGIC;
    s_axis_ctrl_tready : out STD_LOGIC;
    s_axis_ctrl_aresetn : in STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s_rp_add_TVALID,rp_rp_add_TVALID,s_rp_add_TREADY,rp_rp_add_TREADY,s_rp_add_TDATA[31:0],rp_rp_add_TDATA[31:0],s_rp_add_TLAST,rp_rp_add_TLAST,rp_add_ref_clk,rp_add_decouple_status,s_rp_comp_TVALID,rp_rp_comp_TVALID,s_rp_comp_TREADY,rp_rp_comp_TREADY,s_rp_comp_TDATA[31:0],rp_rp_comp_TDATA[31:0],s_rp_comp_TLAST,rp_rp_comp_TLAST,rp_comp_ref_clk,rp_comp_decouple_status,s_rp_dec_TVALID,rp_rp_dec_TVALID,s_rp_dec_TREADY,rp_rp_dec_TREADY,s_rp_dec_TDATA[31:0],rp_rp_dec_TDATA[31:0],s_rp_dec_TLAST,rp_rp_dec_TLAST,rp_dec_ref_clk,rp_dec_decouple_status,s_rp_div_TVALID,rp_rp_div_TVALID,s_rp_div_TREADY,rp_rp_div_TREADY,s_rp_div_TDATA[31:0],rp_rp_div_TDATA[31:0],s_rp_div_TLAST,rp_rp_div_TLAST,rp_div_ref_clk,rp_div_decouple_status,s_rp_inc_TVALID,rp_rp_inc_TVALID,s_rp_inc_TREADY,rp_rp_inc_TREADY,s_rp_inc_TDATA[31:0],rp_rp_inc_TDATA[31:0],s_rp_inc_TLAST,rp_rp_inc_TLAST,rp_inc_ref_clk,rp_inc_decouple_status,s_rp_mod_TVALID,rp_rp_mod_TVALID,s_rp_mod_TREADY,rp_rp_mod_TREADY,s_rp_mod_TDATA[31:0],rp_rp_mod_TDATA[31:0],s_rp_mod_TLAST,rp_rp_mod_TLAST,rp_mod_ref_clk,rp_mod_decouple_status,s_rp_mul_TVALID,rp_rp_mul_TVALID,s_rp_mul_TREADY,rp_rp_mul_TREADY,s_rp_mul_TDATA[31:0],rp_rp_mul_TDATA[31:0],s_rp_mul_TLAST,rp_rp_mul_TLAST,rp_mul_ref_clk,rp_mul_decouple_status,s_rp_mux_TVALID,rp_rp_mux_TVALID,s_rp_mux_TREADY,rp_rp_mux_TREADY,s_rp_mux_TDATA[31:0],rp_rp_mux_TDATA[31:0],s_rp_mux_TLAST,rp_rp_mux_TLAST,rp_mux_ref_clk,rp_mux_decouple_status,s_rp_reg_TVALID,rp_rp_reg_TVALID,s_rp_reg_TREADY,rp_rp_reg_TREADY,s_rp_reg_TDATA[31:0],rp_rp_reg_TDATA[31:0],s_rp_reg_TLAST,rp_rp_reg_TLAST,rp_reg_ref_clk,rp_reg_decouple_status,s_rp_shl_TVALID,rp_rp_shl_TVALID,s_rp_shl_TREADY,rp_rp_shl_TREADY,s_rp_shl_TDATA[31:0],rp_rp_shl_TDATA[31:0],s_rp_shl_TLAST,rp_rp_shl_TLAST,rp_shl_ref_clk,rp_shl_decouple_status,s_rp_shr_TVALID,rp_rp_shr_TVALID,s_rp_shr_TREADY,rp_rp_shr_TREADY,s_rp_shr_TDATA[31:0],rp_rp_shr_TDATA[31:0],s_rp_shr_TLAST,rp_rp_shr_TLAST,rp_shr_ref_clk,rp_shr_decouple_status,s_rp_sub_TVALID,rp_rp_sub_TVALID,s_rp_sub_TREADY,rp_rp_sub_TREADY,s_rp_sub_TDATA[31:0],rp_rp_sub_TDATA[31:0],s_rp_sub_TLAST,rp_rp_sub_TLAST,rp_sub_ref_clk,rp_sub_decouple_status,decouple,decouple_status,aclk,s_axi_reg_awaddr[0:0],s_axi_reg_awvalid,s_axi_reg_awready,s_axi_reg_wdata[31:0],s_axi_reg_wvalid,s_axi_reg_wready,s_axi_reg_bresp[1:0],s_axi_reg_bvalid,s_axi_reg_bready,s_axi_reg_araddr[0:0],s_axi_reg_arvalid,s_axi_reg_arready,s_axi_reg_rdata[31:0],s_axi_reg_rresp[1:0],s_axi_reg_rvalid,s_axi_reg_rready,s_axi_reg_aresetn,m_axis_status_tdata[31:0],m_axis_status_tvalid,s_axis_ctrl_tdata[31:0],s_axis_ctrl_tvalid,s_axis_ctrl_tready,s_axis_ctrl_aresetn";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "prd_prd,Vivado 2017.4";
begin
end;
