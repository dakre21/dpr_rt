-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
-- Date        : Thu Apr 26 21:09:56 2018
-- Host        : dakre-VirtualBox running 64-bit Ubuntu 16.04.3 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ pr_decoupler_0_stub.vhdl
-- Design      : pr_decoupler_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    s_rm_add_TVALID : out STD_LOGIC;
    rp_rm_add_TVALID : in STD_LOGIC;
    s_rm_add_TREADY : in STD_LOGIC;
    rp_rm_add_TREADY : out STD_LOGIC;
    s_rm_add_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rp_rm_add_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_rm_add_TLAST : out STD_LOGIC;
    rp_rm_add_TLAST : in STD_LOGIC;
    rm_add_ref_clk : in STD_LOGIC;
    rm_add_decouple_status : out STD_LOGIC;
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
attribute black_box_pad_pin of stub : architecture is "s_rm_add_TVALID,rp_rm_add_TVALID,s_rm_add_TREADY,rp_rm_add_TREADY,s_rm_add_TDATA[31:0],rp_rm_add_TDATA[31:0],s_rm_add_TLAST,rp_rm_add_TLAST,rm_add_ref_clk,rm_add_decouple_status,decouple,decouple_status,aclk,s_axi_reg_awaddr[0:0],s_axi_reg_awvalid,s_axi_reg_awready,s_axi_reg_wdata[31:0],s_axi_reg_wvalid,s_axi_reg_wready,s_axi_reg_bresp[1:0],s_axi_reg_bvalid,s_axi_reg_bready,s_axi_reg_araddr[0:0],s_axi_reg_arvalid,s_axi_reg_arready,s_axi_reg_rdata[31:0],s_axi_reg_rresp[1:0],s_axi_reg_rvalid,s_axi_reg_rready,s_axi_reg_aresetn,m_axis_status_tdata[31:0],m_axis_status_tvalid,s_axis_ctrl_tdata[31:0],s_axis_ctrl_tvalid,s_axis_ctrl_tready,s_axis_ctrl_aresetn";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "prd_pr_decoupler_0,Vivado 2017.4";
begin
end;
