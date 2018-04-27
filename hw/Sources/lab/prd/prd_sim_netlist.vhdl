-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
-- Date        : Thu Apr 26 21:30:14 2018
-- Host        : dakre-VirtualBox running 64-bit Ubuntu 16.04.3 LTS
-- Command     : write_vhdl -force -mode funcsim /home/dakre/dpr_rt/hw/Sources/lab/prd/prd_sim_netlist.vhdl
-- Design      : prd
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity prd_cdc_sync is
  port (
    rp_rp_add_TREADY : out STD_LOGIC;
    rp_add_decouple_status : out STD_LOGIC;
    s_rp_add_TVALID : out STD_LOGIC;
    s_rp_add_TREADY : in STD_LOGIC;
    rp_rp_add_TVALID : in STD_LOGIC;
    rp_add_ref_clk : in STD_LOGIC;
    prmry_in : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of prd_cdc_sync : entity is "cdc_sync";
end prd_cdc_sync;

architecture STRUCTURE of prd_cdc_sync is
  signal p_level_in_d1_cdc_from : STD_LOGIC;
  signal \^rp_add_decouple_status\ : STD_LOGIC;
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.REG_PLEVEL_IN_cdc_from\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.REG_PLEVEL_IN_cdc_from\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of rp_rp_add_TREADY_INST_0 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of s_rp_add_TVALID_INST_0 : label is "soft_lutpair0";
begin
  rp_add_decouple_status <= \^rp_add_decouple_status\;
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rp_add_ref_clk,
      CE => '1',
      D => p_level_in_d1_cdc_from,
      Q => s_level_out_d1_cdc_to,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rp_add_ref_clk,
      CE => '1',
      D => s_level_out_d1_cdc_to,
      Q => \^rp_add_decouple_status\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.REG_PLEVEL_IN_cdc_from\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => prmry_in,
      Q => p_level_in_d1_cdc_from,
      R => '0'
    );
rp_rp_add_TREADY_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_rp_add_TREADY,
      I1 => \^rp_add_decouple_status\,
      O => rp_rp_add_TREADY
    );
s_rp_add_TVALID_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rp_rp_add_TVALID,
      I1 => \^rp_add_decouple_status\,
      O => s_rp_add_TVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity prd_cdc_sync_0 is
  port (
    rp_rp_comp_TREADY : out STD_LOGIC;
    rp_comp_decouple_status : out STD_LOGIC;
    s_rp_comp_TVALID : out STD_LOGIC;
    s_rp_comp_TREADY : in STD_LOGIC;
    rp_rp_comp_TVALID : in STD_LOGIC;
    rp_comp_ref_clk : in STD_LOGIC;
    prmry_in : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of prd_cdc_sync_0 : entity is "cdc_sync";
end prd_cdc_sync_0;

architecture STRUCTURE of prd_cdc_sync_0 is
  signal p_level_in_d1_cdc_from : STD_LOGIC;
  signal \^rp_comp_decouple_status\ : STD_LOGIC;
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.REG_PLEVEL_IN_cdc_from\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.REG_PLEVEL_IN_cdc_from\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of rp_rp_comp_TREADY_INST_0 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of s_rp_comp_TVALID_INST_0 : label is "soft_lutpair1";
begin
  rp_comp_decouple_status <= \^rp_comp_decouple_status\;
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rp_comp_ref_clk,
      CE => '1',
      D => p_level_in_d1_cdc_from,
      Q => s_level_out_d1_cdc_to,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rp_comp_ref_clk,
      CE => '1',
      D => s_level_out_d1_cdc_to,
      Q => \^rp_comp_decouple_status\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.REG_PLEVEL_IN_cdc_from\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => prmry_in,
      Q => p_level_in_d1_cdc_from,
      R => '0'
    );
rp_rp_comp_TREADY_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_rp_comp_TREADY,
      I1 => \^rp_comp_decouple_status\,
      O => rp_rp_comp_TREADY
    );
s_rp_comp_TVALID_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rp_rp_comp_TVALID,
      I1 => \^rp_comp_decouple_status\,
      O => s_rp_comp_TVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity prd_cdc_sync_1 is
  port (
    rp_rp_dec_TREADY : out STD_LOGIC;
    rp_dec_decouple_status : out STD_LOGIC;
    s_rp_dec_TVALID : out STD_LOGIC;
    s_rp_dec_TREADY : in STD_LOGIC;
    rp_rp_dec_TVALID : in STD_LOGIC;
    rp_dec_ref_clk : in STD_LOGIC;
    prmry_in : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of prd_cdc_sync_1 : entity is "cdc_sync";
end prd_cdc_sync_1;

architecture STRUCTURE of prd_cdc_sync_1 is
  signal p_level_in_d1_cdc_from : STD_LOGIC;
  signal \^rp_dec_decouple_status\ : STD_LOGIC;
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.REG_PLEVEL_IN_cdc_from\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.REG_PLEVEL_IN_cdc_from\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of rp_rp_dec_TREADY_INST_0 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of s_rp_dec_TVALID_INST_0 : label is "soft_lutpair2";
begin
  rp_dec_decouple_status <= \^rp_dec_decouple_status\;
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rp_dec_ref_clk,
      CE => '1',
      D => p_level_in_d1_cdc_from,
      Q => s_level_out_d1_cdc_to,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rp_dec_ref_clk,
      CE => '1',
      D => s_level_out_d1_cdc_to,
      Q => \^rp_dec_decouple_status\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.REG_PLEVEL_IN_cdc_from\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => prmry_in,
      Q => p_level_in_d1_cdc_from,
      R => '0'
    );
rp_rp_dec_TREADY_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_rp_dec_TREADY,
      I1 => \^rp_dec_decouple_status\,
      O => rp_rp_dec_TREADY
    );
s_rp_dec_TVALID_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rp_rp_dec_TVALID,
      I1 => \^rp_dec_decouple_status\,
      O => s_rp_dec_TVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity prd_cdc_sync_10 is
  port (
    rp_rp_sub_TREADY : out STD_LOGIC;
    rp_sub_decouple_status : out STD_LOGIC;
    s_rp_sub_TVALID : out STD_LOGIC;
    s_rp_sub_TREADY : in STD_LOGIC;
    rp_rp_sub_TVALID : in STD_LOGIC;
    rp_sub_ref_clk : in STD_LOGIC;
    prmry_in : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of prd_cdc_sync_10 : entity is "cdc_sync";
end prd_cdc_sync_10;

architecture STRUCTURE of prd_cdc_sync_10 is
  signal p_level_in_d1_cdc_from : STD_LOGIC;
  signal \^rp_sub_decouple_status\ : STD_LOGIC;
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.REG_PLEVEL_IN_cdc_from\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.REG_PLEVEL_IN_cdc_from\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of rp_rp_sub_TREADY_INST_0 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of s_rp_sub_TVALID_INST_0 : label is "soft_lutpair11";
begin
  rp_sub_decouple_status <= \^rp_sub_decouple_status\;
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rp_sub_ref_clk,
      CE => '1',
      D => p_level_in_d1_cdc_from,
      Q => s_level_out_d1_cdc_to,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rp_sub_ref_clk,
      CE => '1',
      D => s_level_out_d1_cdc_to,
      Q => \^rp_sub_decouple_status\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.REG_PLEVEL_IN_cdc_from\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => prmry_in,
      Q => p_level_in_d1_cdc_from,
      R => '0'
    );
rp_rp_sub_TREADY_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_rp_sub_TREADY,
      I1 => \^rp_sub_decouple_status\,
      O => rp_rp_sub_TREADY
    );
s_rp_sub_TVALID_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rp_rp_sub_TVALID,
      I1 => \^rp_sub_decouple_status\,
      O => s_rp_sub_TVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity prd_cdc_sync_2 is
  port (
    rp_rp_div_TREADY : out STD_LOGIC;
    rp_div_decouple_status : out STD_LOGIC;
    s_rp_div_TVALID : out STD_LOGIC;
    s_rp_div_TREADY : in STD_LOGIC;
    rp_rp_div_TVALID : in STD_LOGIC;
    rp_div_ref_clk : in STD_LOGIC;
    prmry_in : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of prd_cdc_sync_2 : entity is "cdc_sync";
end prd_cdc_sync_2;

architecture STRUCTURE of prd_cdc_sync_2 is
  signal p_level_in_d1_cdc_from : STD_LOGIC;
  signal \^rp_div_decouple_status\ : STD_LOGIC;
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.REG_PLEVEL_IN_cdc_from\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.REG_PLEVEL_IN_cdc_from\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of rp_rp_div_TREADY_INST_0 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of s_rp_div_TVALID_INST_0 : label is "soft_lutpair3";
begin
  rp_div_decouple_status <= \^rp_div_decouple_status\;
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rp_div_ref_clk,
      CE => '1',
      D => p_level_in_d1_cdc_from,
      Q => s_level_out_d1_cdc_to,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rp_div_ref_clk,
      CE => '1',
      D => s_level_out_d1_cdc_to,
      Q => \^rp_div_decouple_status\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.REG_PLEVEL_IN_cdc_from\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => prmry_in,
      Q => p_level_in_d1_cdc_from,
      R => '0'
    );
rp_rp_div_TREADY_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_rp_div_TREADY,
      I1 => \^rp_div_decouple_status\,
      O => rp_rp_div_TREADY
    );
s_rp_div_TVALID_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rp_rp_div_TVALID,
      I1 => \^rp_div_decouple_status\,
      O => s_rp_div_TVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity prd_cdc_sync_3 is
  port (
    rp_rp_inc_TREADY : out STD_LOGIC;
    rp_inc_decouple_status : out STD_LOGIC;
    s_rp_inc_TVALID : out STD_LOGIC;
    s_rp_inc_TREADY : in STD_LOGIC;
    rp_rp_inc_TVALID : in STD_LOGIC;
    rp_inc_ref_clk : in STD_LOGIC;
    prmry_in : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of prd_cdc_sync_3 : entity is "cdc_sync";
end prd_cdc_sync_3;

architecture STRUCTURE of prd_cdc_sync_3 is
  signal p_level_in_d1_cdc_from : STD_LOGIC;
  signal \^rp_inc_decouple_status\ : STD_LOGIC;
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.REG_PLEVEL_IN_cdc_from\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.REG_PLEVEL_IN_cdc_from\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of rp_rp_inc_TREADY_INST_0 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of s_rp_inc_TVALID_INST_0 : label is "soft_lutpair4";
begin
  rp_inc_decouple_status <= \^rp_inc_decouple_status\;
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rp_inc_ref_clk,
      CE => '1',
      D => p_level_in_d1_cdc_from,
      Q => s_level_out_d1_cdc_to,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rp_inc_ref_clk,
      CE => '1',
      D => s_level_out_d1_cdc_to,
      Q => \^rp_inc_decouple_status\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.REG_PLEVEL_IN_cdc_from\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => prmry_in,
      Q => p_level_in_d1_cdc_from,
      R => '0'
    );
rp_rp_inc_TREADY_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_rp_inc_TREADY,
      I1 => \^rp_inc_decouple_status\,
      O => rp_rp_inc_TREADY
    );
s_rp_inc_TVALID_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rp_rp_inc_TVALID,
      I1 => \^rp_inc_decouple_status\,
      O => s_rp_inc_TVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity prd_cdc_sync_4 is
  port (
    rp_rp_mod_TREADY : out STD_LOGIC;
    rp_mod_decouple_status : out STD_LOGIC;
    s_rp_mod_TVALID : out STD_LOGIC;
    s_rp_mod_TREADY : in STD_LOGIC;
    rp_rp_mod_TVALID : in STD_LOGIC;
    rp_mod_ref_clk : in STD_LOGIC;
    prmry_in : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of prd_cdc_sync_4 : entity is "cdc_sync";
end prd_cdc_sync_4;

architecture STRUCTURE of prd_cdc_sync_4 is
  signal p_level_in_d1_cdc_from : STD_LOGIC;
  signal \^rp_mod_decouple_status\ : STD_LOGIC;
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.REG_PLEVEL_IN_cdc_from\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.REG_PLEVEL_IN_cdc_from\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of rp_rp_mod_TREADY_INST_0 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of s_rp_mod_TVALID_INST_0 : label is "soft_lutpair5";
begin
  rp_mod_decouple_status <= \^rp_mod_decouple_status\;
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rp_mod_ref_clk,
      CE => '1',
      D => p_level_in_d1_cdc_from,
      Q => s_level_out_d1_cdc_to,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rp_mod_ref_clk,
      CE => '1',
      D => s_level_out_d1_cdc_to,
      Q => \^rp_mod_decouple_status\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.REG_PLEVEL_IN_cdc_from\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => prmry_in,
      Q => p_level_in_d1_cdc_from,
      R => '0'
    );
rp_rp_mod_TREADY_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_rp_mod_TREADY,
      I1 => \^rp_mod_decouple_status\,
      O => rp_rp_mod_TREADY
    );
s_rp_mod_TVALID_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rp_rp_mod_TVALID,
      I1 => \^rp_mod_decouple_status\,
      O => s_rp_mod_TVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity prd_cdc_sync_5 is
  port (
    rp_rp_mul_TREADY : out STD_LOGIC;
    rp_mul_decouple_status : out STD_LOGIC;
    s_rp_mul_TVALID : out STD_LOGIC;
    s_rp_mul_TREADY : in STD_LOGIC;
    rp_rp_mul_TVALID : in STD_LOGIC;
    rp_mul_ref_clk : in STD_LOGIC;
    prmry_in : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of prd_cdc_sync_5 : entity is "cdc_sync";
end prd_cdc_sync_5;

architecture STRUCTURE of prd_cdc_sync_5 is
  signal p_level_in_d1_cdc_from : STD_LOGIC;
  signal \^rp_mul_decouple_status\ : STD_LOGIC;
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.REG_PLEVEL_IN_cdc_from\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.REG_PLEVEL_IN_cdc_from\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of rp_rp_mul_TREADY_INST_0 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of s_rp_mul_TVALID_INST_0 : label is "soft_lutpair6";
begin
  rp_mul_decouple_status <= \^rp_mul_decouple_status\;
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rp_mul_ref_clk,
      CE => '1',
      D => p_level_in_d1_cdc_from,
      Q => s_level_out_d1_cdc_to,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rp_mul_ref_clk,
      CE => '1',
      D => s_level_out_d1_cdc_to,
      Q => \^rp_mul_decouple_status\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.REG_PLEVEL_IN_cdc_from\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => prmry_in,
      Q => p_level_in_d1_cdc_from,
      R => '0'
    );
rp_rp_mul_TREADY_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_rp_mul_TREADY,
      I1 => \^rp_mul_decouple_status\,
      O => rp_rp_mul_TREADY
    );
s_rp_mul_TVALID_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rp_rp_mul_TVALID,
      I1 => \^rp_mul_decouple_status\,
      O => s_rp_mul_TVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity prd_cdc_sync_6 is
  port (
    rp_rp_mux_TREADY : out STD_LOGIC;
    rp_mux_decouple_status : out STD_LOGIC;
    s_rp_mux_TVALID : out STD_LOGIC;
    s_rp_mux_TREADY : in STD_LOGIC;
    rp_rp_mux_TVALID : in STD_LOGIC;
    rp_mux_ref_clk : in STD_LOGIC;
    prmry_in : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of prd_cdc_sync_6 : entity is "cdc_sync";
end prd_cdc_sync_6;

architecture STRUCTURE of prd_cdc_sync_6 is
  signal p_level_in_d1_cdc_from : STD_LOGIC;
  signal \^rp_mux_decouple_status\ : STD_LOGIC;
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.REG_PLEVEL_IN_cdc_from\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.REG_PLEVEL_IN_cdc_from\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of rp_rp_mux_TREADY_INST_0 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of s_rp_mux_TVALID_INST_0 : label is "soft_lutpair7";
begin
  rp_mux_decouple_status <= \^rp_mux_decouple_status\;
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rp_mux_ref_clk,
      CE => '1',
      D => p_level_in_d1_cdc_from,
      Q => s_level_out_d1_cdc_to,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rp_mux_ref_clk,
      CE => '1',
      D => s_level_out_d1_cdc_to,
      Q => \^rp_mux_decouple_status\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.REG_PLEVEL_IN_cdc_from\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => prmry_in,
      Q => p_level_in_d1_cdc_from,
      R => '0'
    );
rp_rp_mux_TREADY_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_rp_mux_TREADY,
      I1 => \^rp_mux_decouple_status\,
      O => rp_rp_mux_TREADY
    );
s_rp_mux_TVALID_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rp_rp_mux_TVALID,
      I1 => \^rp_mux_decouple_status\,
      O => s_rp_mux_TVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity prd_cdc_sync_7 is
  port (
    rp_rp_reg_TREADY : out STD_LOGIC;
    rp_reg_decouple_status : out STD_LOGIC;
    s_rp_reg_TVALID : out STD_LOGIC;
    s_rp_reg_TREADY : in STD_LOGIC;
    rp_rp_reg_TVALID : in STD_LOGIC;
    rp_reg_ref_clk : in STD_LOGIC;
    prmry_in : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of prd_cdc_sync_7 : entity is "cdc_sync";
end prd_cdc_sync_7;

architecture STRUCTURE of prd_cdc_sync_7 is
  signal p_level_in_d1_cdc_from : STD_LOGIC;
  signal \^rp_reg_decouple_status\ : STD_LOGIC;
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.REG_PLEVEL_IN_cdc_from\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.REG_PLEVEL_IN_cdc_from\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of rp_rp_reg_TREADY_INST_0 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of s_rp_reg_TVALID_INST_0 : label is "soft_lutpair8";
begin
  rp_reg_decouple_status <= \^rp_reg_decouple_status\;
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rp_reg_ref_clk,
      CE => '1',
      D => p_level_in_d1_cdc_from,
      Q => s_level_out_d1_cdc_to,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rp_reg_ref_clk,
      CE => '1',
      D => s_level_out_d1_cdc_to,
      Q => \^rp_reg_decouple_status\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.REG_PLEVEL_IN_cdc_from\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => prmry_in,
      Q => p_level_in_d1_cdc_from,
      R => '0'
    );
rp_rp_reg_TREADY_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_rp_reg_TREADY,
      I1 => \^rp_reg_decouple_status\,
      O => rp_rp_reg_TREADY
    );
s_rp_reg_TVALID_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rp_rp_reg_TVALID,
      I1 => \^rp_reg_decouple_status\,
      O => s_rp_reg_TVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity prd_cdc_sync_8 is
  port (
    rp_rp_shl_TREADY : out STD_LOGIC;
    rp_shl_decouple_status : out STD_LOGIC;
    s_rp_shl_TVALID : out STD_LOGIC;
    s_rp_shl_TREADY : in STD_LOGIC;
    rp_rp_shl_TVALID : in STD_LOGIC;
    rp_shl_ref_clk : in STD_LOGIC;
    prmry_in : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of prd_cdc_sync_8 : entity is "cdc_sync";
end prd_cdc_sync_8;

architecture STRUCTURE of prd_cdc_sync_8 is
  signal p_level_in_d1_cdc_from : STD_LOGIC;
  signal \^rp_shl_decouple_status\ : STD_LOGIC;
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.REG_PLEVEL_IN_cdc_from\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.REG_PLEVEL_IN_cdc_from\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of rp_rp_shl_TREADY_INST_0 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of s_rp_shl_TVALID_INST_0 : label is "soft_lutpair9";
begin
  rp_shl_decouple_status <= \^rp_shl_decouple_status\;
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rp_shl_ref_clk,
      CE => '1',
      D => p_level_in_d1_cdc_from,
      Q => s_level_out_d1_cdc_to,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rp_shl_ref_clk,
      CE => '1',
      D => s_level_out_d1_cdc_to,
      Q => \^rp_shl_decouple_status\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.REG_PLEVEL_IN_cdc_from\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => prmry_in,
      Q => p_level_in_d1_cdc_from,
      R => '0'
    );
rp_rp_shl_TREADY_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_rp_shl_TREADY,
      I1 => \^rp_shl_decouple_status\,
      O => rp_rp_shl_TREADY
    );
s_rp_shl_TVALID_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rp_rp_shl_TVALID,
      I1 => \^rp_shl_decouple_status\,
      O => s_rp_shl_TVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity prd_cdc_sync_9 is
  port (
    rp_rp_shr_TREADY : out STD_LOGIC;
    rp_shr_decouple_status : out STD_LOGIC;
    s_rp_shr_TVALID : out STD_LOGIC;
    s_rp_shr_TREADY : in STD_LOGIC;
    rp_rp_shr_TVALID : in STD_LOGIC;
    rp_shr_ref_clk : in STD_LOGIC;
    prmry_in : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of prd_cdc_sync_9 : entity is "cdc_sync";
end prd_cdc_sync_9;

architecture STRUCTURE of prd_cdc_sync_9 is
  signal p_level_in_d1_cdc_from : STD_LOGIC;
  signal \^rp_shr_decouple_status\ : STD_LOGIC;
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.REG_PLEVEL_IN_cdc_from\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.REG_PLEVEL_IN_cdc_from\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of rp_rp_shr_TREADY_INST_0 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of s_rp_shr_TVALID_INST_0 : label is "soft_lutpair10";
begin
  rp_shr_decouple_status <= \^rp_shr_decouple_status\;
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rp_shr_ref_clk,
      CE => '1',
      D => p_level_in_d1_cdc_from,
      Q => s_level_out_d1_cdc_to,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rp_shr_ref_clk,
      CE => '1',
      D => s_level_out_d1_cdc_to,
      Q => \^rp_shr_decouple_status\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.INPUT_FLOP.REG_PLEVEL_IN_cdc_from\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => prmry_in,
      Q => p_level_in_d1_cdc_from,
      R => '0'
    );
rp_rp_shr_TREADY_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_rp_shr_TREADY,
      I1 => \^rp_shr_decouple_status\,
      O => rp_rp_shr_TREADY
    );
s_rp_shr_TVALID_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rp_rp_shr_TVALID,
      I1 => \^rp_shr_decouple_status\,
      O => s_rp_shr_TVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity prd_axi_lite_if is
  port (
    s_axi_reg_rdata : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_reg_rresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_reg_rvalid : out STD_LOGIC;
    prmry_in : out STD_LOGIC;
    s_axi_reg_bresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_reg_bvalid : out STD_LOGIC;
    s_axi_reg_arready : out STD_LOGIC;
    aclk : in STD_LOGIC;
    axi_stream_decouple : in STD_LOGIC;
    decouple : in STD_LOGIC;
    s_axi_reg_wdata : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_reg_awaddr : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_reg_arvalid : in STD_LOGIC;
    s_axi_reg_rready : in STD_LOGIC;
    s_axi_reg_aresetn : in STD_LOGIC;
    s_axi_reg_araddr : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_reg_bready : in STD_LOGIC;
    s_axi_reg_awvalid : in STD_LOGIC;
    s_axi_reg_wvalid : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of prd_axi_lite_if : entity is "axi_lite_if";
end prd_axi_lite_if;

architecture STRUCTURE of prd_axi_lite_if is
  signal \/i_/i__n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[2]_i_2_n_0\ : STD_LOGIC;
  signal axi_lite_decouple : STD_LOGIC;
  signal current_state : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of current_state : signal is "yes";
  signal decouple_bit_i_i_1_n_0 : STD_LOGIC;
  signal \s_axi_rdata_i[0]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[0]_i_2_n_0\ : STD_LOGIC;
  signal \^s_axi_reg_rdata\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_axi_reg_rresp\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_axi_reg_rvalid\ : STD_LOGIC;
  signal \s_axi_rresp_i[1]_i_1_n_0\ : STD_LOGIC;
  signal s_axi_rvalid_i_i_1_n_0 : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[0]\ : label is "st_idle:000,st_read:001,st_write:010,st_read_resp:011,st_write_resp:100";
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_current_state_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[1]\ : label is "st_idle:000,st_read:001,st_write:010,st_read_resp:011,st_write_resp:100";
  attribute KEEP of \FSM_sequential_current_state_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[2]\ : label is "st_idle:000,st_read:001,st_write:010,st_read_resp:011,st_write_resp:100";
  attribute KEEP of \FSM_sequential_current_state_reg[2]\ : label is "yes";
begin
  s_axi_reg_rdata(0) <= \^s_axi_reg_rdata\(0);
  s_axi_reg_rresp(0) <= \^s_axi_reg_rresp\(0);
  s_axi_reg_rvalid <= \^s_axi_reg_rvalid\;
\/i_/i_\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00101110"
    )
        port map (
      I0 => current_state(1),
      I1 => current_state(2),
      I2 => s_axi_reg_arvalid,
      I3 => current_state(0),
      I4 => s_axi_reg_rready,
      O => \/i_/i__n_0\
    );
\FSM_sequential_current_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABF8A80"
    )
        port map (
      I0 => \/i_/i__n_0\,
      I1 => \FSM_sequential_current_state[1]_i_3_n_0\,
      I2 => current_state(2),
      I3 => \FSM_sequential_current_state[2]_i_2_n_0\,
      I4 => current_state(0),
      O => \FSM_sequential_current_state[0]_i_1_n_0\
    );
\FSM_sequential_current_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABF8A80"
    )
        port map (
      I0 => \FSM_sequential_current_state[1]_i_2_n_0\,
      I1 => \FSM_sequential_current_state[1]_i_3_n_0\,
      I2 => current_state(2),
      I3 => \FSM_sequential_current_state[2]_i_2_n_0\,
      I4 => current_state(1),
      O => \FSM_sequential_current_state[1]_i_1_n_0\
    );
\FSM_sequential_current_state[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00011101"
    )
        port map (
      I0 => current_state(1),
      I1 => current_state(2),
      I2 => s_axi_reg_arvalid,
      I3 => current_state(0),
      I4 => s_axi_reg_rready,
      O => \FSM_sequential_current_state[1]_i_2_n_0\
    );
\FSM_sequential_current_state[1]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => s_axi_reg_bready,
      I1 => current_state(0),
      I2 => current_state(1),
      O => \FSM_sequential_current_state[1]_i_3_n_0\
    );
\FSM_sequential_current_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD10FDFF00100000"
    )
        port map (
      I0 => s_axi_reg_bready,
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => current_state(2),
      I4 => \FSM_sequential_current_state[2]_i_2_n_0\,
      I5 => current_state(2),
      O => \FSM_sequential_current_state[2]_i_1_n_0\
    );
\FSM_sequential_current_state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEA5555FFEA"
    )
        port map (
      I0 => current_state(0),
      I1 => s_axi_reg_awvalid,
      I2 => s_axi_reg_wvalid,
      I3 => s_axi_reg_arvalid,
      I4 => current_state(1),
      I5 => s_axi_reg_rready,
      O => \FSM_sequential_current_state[2]_i_2_n_0\
    );
\FSM_sequential_current_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \FSM_sequential_current_state[0]_i_1_n_0\,
      Q => current_state(0),
      R => \s_axi_rdata_i[0]_i_1_n_0\
    );
\FSM_sequential_current_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \FSM_sequential_current_state[1]_i_1_n_0\,
      Q => current_state(1),
      R => \s_axi_rdata_i[0]_i_1_n_0\
    );
\FSM_sequential_current_state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \FSM_sequential_current_state[2]_i_1_n_0\,
      Q => current_state(2),
      R => \s_axi_rdata_i[0]_i_1_n_0\
    );
decouple_bit_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEB00000028"
    )
        port map (
      I0 => s_axi_reg_wdata(0),
      I1 => current_state(1),
      I2 => current_state(2),
      I3 => current_state(0),
      I4 => s_axi_reg_awaddr(0),
      I5 => axi_lite_decouple,
      O => decouple_bit_i_i_1_n_0
    );
decouple_bit_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => decouple_bit_i_i_1_n_0,
      Q => axi_lite_decouple,
      R => \s_axi_rdata_i[0]_i_1_n_0\
    );
decouple_status_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => axi_stream_decouple,
      I1 => decouple,
      I2 => axi_lite_decouple,
      O => prmry_in
    );
\s_axi_rdata_i[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_reg_aresetn,
      O => \s_axi_rdata_i[0]_i_1_n_0\
    );
\s_axi_rdata_i[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF0000FE00"
    )
        port map (
      I0 => axi_stream_decouple,
      I1 => decouple,
      I2 => axi_lite_decouple,
      I3 => current_state(0),
      I4 => current_state(2),
      I5 => \^s_axi_reg_rdata\(0),
      O => \s_axi_rdata_i[0]_i_2_n_0\
    );
\s_axi_rdata_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \s_axi_rdata_i[0]_i_2_n_0\,
      Q => \^s_axi_reg_rdata\(0),
      R => \s_axi_rdata_i[0]_i_1_n_0\
    );
s_axi_reg_arready_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_state(0),
      I1 => current_state(2),
      O => s_axi_reg_arready
    );
\s_axi_reg_bresp[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0600"
    )
        port map (
      I0 => current_state(1),
      I1 => current_state(2),
      I2 => current_state(0),
      I3 => s_axi_reg_awaddr(0),
      O => s_axi_reg_bresp(0)
    );
s_axi_reg_bvalid_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"14"
    )
        port map (
      I0 => current_state(0),
      I1 => current_state(2),
      I2 => current_state(1),
      O => s_axi_reg_bvalid
    );
\s_axi_rresp_i[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8C888088"
    )
        port map (
      I0 => \^s_axi_reg_rresp\(0),
      I1 => s_axi_reg_aresetn,
      I2 => current_state(2),
      I3 => current_state(0),
      I4 => s_axi_reg_araddr(0),
      O => \s_axi_rresp_i[1]_i_1_n_0\
    );
\s_axi_rresp_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \s_axi_rresp_i[1]_i_1_n_0\,
      Q => \^s_axi_reg_rresp\(0),
      R => '0'
    );
s_axi_rvalid_i_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => s_axi_reg_rready,
      I3 => \^s_axi_reg_rvalid\,
      O => s_axi_rvalid_i_i_1_n_0
    );
s_axi_rvalid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => s_axi_rvalid_i_i_1_n_0,
      Q => \^s_axi_reg_rvalid\,
      R => \s_axi_rdata_i[0]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity prd_prd_prd is
  port (
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
    s_axi_reg_aresetn : in STD_LOGIC;
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
    aclk : in STD_LOGIC;
    m_axis_status_tvalid : out STD_LOGIC;
    m_axis_status_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_ctrl_aresetn : in STD_LOGIC;
    s_axis_ctrl_tvalid : in STD_LOGIC;
    s_axis_ctrl_tready : out STD_LOGIC;
    s_axis_ctrl_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    decouple : in STD_LOGIC;
    decouple_status : out STD_LOGIC
  );
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of prd_prd_prd : entity is "zynq";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of prd_prd_prd : entity is "prd_prd";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of prd_prd_prd : entity is "yes";
end prd_prd_prd;

architecture STRUCTURE of prd_prd_prd is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal axi_stream_decouple : STD_LOGIC;
  signal axi_stream_decouple_i_1_n_0 : STD_LOGIC;
  signal \^m_axis_status_tdata\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^rp_rp_add_tdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^rp_rp_add_tlast\ : STD_LOGIC;
  signal \^rp_rp_comp_tdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^rp_rp_comp_tlast\ : STD_LOGIC;
  signal \^rp_rp_dec_tdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^rp_rp_dec_tlast\ : STD_LOGIC;
  signal \^rp_rp_div_tdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^rp_rp_div_tlast\ : STD_LOGIC;
  signal \^rp_rp_inc_tdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^rp_rp_inc_tlast\ : STD_LOGIC;
  signal \^rp_rp_mod_tdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^rp_rp_mod_tlast\ : STD_LOGIC;
  signal \^rp_rp_mul_tdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^rp_rp_mul_tlast\ : STD_LOGIC;
  signal \^rp_rp_mux_tdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^rp_rp_mux_tlast\ : STD_LOGIC;
  signal \^rp_rp_reg_tdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^rp_rp_reg_tlast\ : STD_LOGIC;
  signal \^rp_rp_shl_tdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^rp_rp_shl_tlast\ : STD_LOGIC;
  signal \^rp_rp_shr_tdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^rp_rp_shr_tlast\ : STD_LOGIC;
  signal \^rp_rp_sub_tdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^rp_rp_sub_tlast\ : STD_LOGIC;
  signal \^s_axi_reg_bresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^s_axi_reg_bvalid\ : STD_LOGIC;
  signal \^s_axi_reg_rdata\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_axi_reg_rresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
begin
  \^rp_rp_add_tdata\(31 downto 0) <= rp_rp_add_TDATA(31 downto 0);
  \^rp_rp_add_tlast\ <= rp_rp_add_TLAST;
  \^rp_rp_comp_tdata\(31 downto 0) <= rp_rp_comp_TDATA(31 downto 0);
  \^rp_rp_comp_tlast\ <= rp_rp_comp_TLAST;
  \^rp_rp_dec_tdata\(31 downto 0) <= rp_rp_dec_TDATA(31 downto 0);
  \^rp_rp_dec_tlast\ <= rp_rp_dec_TLAST;
  \^rp_rp_div_tdata\(31 downto 0) <= rp_rp_div_TDATA(31 downto 0);
  \^rp_rp_div_tlast\ <= rp_rp_div_TLAST;
  \^rp_rp_inc_tdata\(31 downto 0) <= rp_rp_inc_TDATA(31 downto 0);
  \^rp_rp_inc_tlast\ <= rp_rp_inc_TLAST;
  \^rp_rp_mod_tdata\(31 downto 0) <= rp_rp_mod_TDATA(31 downto 0);
  \^rp_rp_mod_tlast\ <= rp_rp_mod_TLAST;
  \^rp_rp_mul_tdata\(31 downto 0) <= rp_rp_mul_TDATA(31 downto 0);
  \^rp_rp_mul_tlast\ <= rp_rp_mul_TLAST;
  \^rp_rp_mux_tdata\(31 downto 0) <= rp_rp_mux_TDATA(31 downto 0);
  \^rp_rp_mux_tlast\ <= rp_rp_mux_TLAST;
  \^rp_rp_reg_tdata\(31 downto 0) <= rp_rp_reg_TDATA(31 downto 0);
  \^rp_rp_reg_tlast\ <= rp_rp_reg_TLAST;
  \^rp_rp_shl_tdata\(31 downto 0) <= rp_rp_shl_TDATA(31 downto 0);
  \^rp_rp_shl_tlast\ <= rp_rp_shl_TLAST;
  \^rp_rp_shr_tdata\(31 downto 0) <= rp_rp_shr_TDATA(31 downto 0);
  \^rp_rp_shr_tlast\ <= rp_rp_shr_TLAST;
  \^rp_rp_sub_tdata\(31 downto 0) <= rp_rp_sub_TDATA(31 downto 0);
  \^rp_rp_sub_tlast\ <= rp_rp_sub_TLAST;
  decouple_status <= \^m_axis_status_tdata\(0);
  m_axis_status_tdata(31) <= \<const0>\;
  m_axis_status_tdata(30) <= \<const0>\;
  m_axis_status_tdata(29) <= \<const0>\;
  m_axis_status_tdata(28) <= \<const0>\;
  m_axis_status_tdata(27) <= \<const0>\;
  m_axis_status_tdata(26) <= \<const0>\;
  m_axis_status_tdata(25) <= \<const0>\;
  m_axis_status_tdata(24) <= \<const0>\;
  m_axis_status_tdata(23) <= \<const0>\;
  m_axis_status_tdata(22) <= \<const0>\;
  m_axis_status_tdata(21) <= \<const0>\;
  m_axis_status_tdata(20) <= \<const0>\;
  m_axis_status_tdata(19) <= \<const0>\;
  m_axis_status_tdata(18) <= \<const0>\;
  m_axis_status_tdata(17) <= \<const0>\;
  m_axis_status_tdata(16) <= \<const0>\;
  m_axis_status_tdata(15) <= \<const0>\;
  m_axis_status_tdata(14) <= \<const0>\;
  m_axis_status_tdata(13) <= \<const0>\;
  m_axis_status_tdata(12) <= \<const0>\;
  m_axis_status_tdata(11) <= \<const0>\;
  m_axis_status_tdata(10) <= \<const0>\;
  m_axis_status_tdata(9) <= \<const0>\;
  m_axis_status_tdata(8) <= \<const0>\;
  m_axis_status_tdata(7) <= \<const0>\;
  m_axis_status_tdata(6) <= \<const0>\;
  m_axis_status_tdata(5) <= \<const0>\;
  m_axis_status_tdata(4) <= \<const0>\;
  m_axis_status_tdata(3) <= \<const0>\;
  m_axis_status_tdata(2) <= \<const0>\;
  m_axis_status_tdata(1) <= \<const0>\;
  m_axis_status_tdata(0) <= \^m_axis_status_tdata\(0);
  m_axis_status_tvalid <= \<const1>\;
  s_axi_reg_awready <= \^s_axi_reg_bvalid\;
  s_axi_reg_bresp(1) <= \^s_axi_reg_bresp\(1);
  s_axi_reg_bresp(0) <= \<const0>\;
  s_axi_reg_bvalid <= \^s_axi_reg_bvalid\;
  s_axi_reg_rdata(31) <= \<const0>\;
  s_axi_reg_rdata(30) <= \<const0>\;
  s_axi_reg_rdata(29) <= \<const0>\;
  s_axi_reg_rdata(28) <= \<const0>\;
  s_axi_reg_rdata(27) <= \<const0>\;
  s_axi_reg_rdata(26) <= \<const0>\;
  s_axi_reg_rdata(25) <= \<const0>\;
  s_axi_reg_rdata(24) <= \<const0>\;
  s_axi_reg_rdata(23) <= \<const0>\;
  s_axi_reg_rdata(22) <= \<const0>\;
  s_axi_reg_rdata(21) <= \<const0>\;
  s_axi_reg_rdata(20) <= \<const0>\;
  s_axi_reg_rdata(19) <= \<const0>\;
  s_axi_reg_rdata(18) <= \<const0>\;
  s_axi_reg_rdata(17) <= \<const0>\;
  s_axi_reg_rdata(16) <= \<const0>\;
  s_axi_reg_rdata(15) <= \<const0>\;
  s_axi_reg_rdata(14) <= \<const0>\;
  s_axi_reg_rdata(13) <= \<const0>\;
  s_axi_reg_rdata(12) <= \<const0>\;
  s_axi_reg_rdata(11) <= \<const0>\;
  s_axi_reg_rdata(10) <= \<const0>\;
  s_axi_reg_rdata(9) <= \<const0>\;
  s_axi_reg_rdata(8) <= \<const0>\;
  s_axi_reg_rdata(7) <= \<const0>\;
  s_axi_reg_rdata(6) <= \<const0>\;
  s_axi_reg_rdata(5) <= \<const0>\;
  s_axi_reg_rdata(4) <= \<const0>\;
  s_axi_reg_rdata(3) <= \<const0>\;
  s_axi_reg_rdata(2) <= \<const0>\;
  s_axi_reg_rdata(1) <= \<const0>\;
  s_axi_reg_rdata(0) <= \^s_axi_reg_rdata\(0);
  s_axi_reg_rresp(1) <= \^s_axi_reg_rresp\(1);
  s_axi_reg_rresp(0) <= \<const0>\;
  s_axi_reg_wready <= \^s_axi_reg_bvalid\;
  s_axis_ctrl_tready <= \<const1>\;
  s_rp_add_TDATA(31 downto 0) <= \^rp_rp_add_tdata\(31 downto 0);
  s_rp_add_TLAST <= \^rp_rp_add_tlast\;
  s_rp_comp_TDATA(31 downto 0) <= \^rp_rp_comp_tdata\(31 downto 0);
  s_rp_comp_TLAST <= \^rp_rp_comp_tlast\;
  s_rp_dec_TDATA(31 downto 0) <= \^rp_rp_dec_tdata\(31 downto 0);
  s_rp_dec_TLAST <= \^rp_rp_dec_tlast\;
  s_rp_div_TDATA(31 downto 0) <= \^rp_rp_div_tdata\(31 downto 0);
  s_rp_div_TLAST <= \^rp_rp_div_tlast\;
  s_rp_inc_TDATA(31 downto 0) <= \^rp_rp_inc_tdata\(31 downto 0);
  s_rp_inc_TLAST <= \^rp_rp_inc_tlast\;
  s_rp_mod_TDATA(31 downto 0) <= \^rp_rp_mod_tdata\(31 downto 0);
  s_rp_mod_TLAST <= \^rp_rp_mod_tlast\;
  s_rp_mul_TDATA(31 downto 0) <= \^rp_rp_mul_tdata\(31 downto 0);
  s_rp_mul_TLAST <= \^rp_rp_mul_tlast\;
  s_rp_mux_TDATA(31 downto 0) <= \^rp_rp_mux_tdata\(31 downto 0);
  s_rp_mux_TLAST <= \^rp_rp_mux_tlast\;
  s_rp_reg_TDATA(31 downto 0) <= \^rp_rp_reg_tdata\(31 downto 0);
  s_rp_reg_TLAST <= \^rp_rp_reg_tlast\;
  s_rp_shl_TDATA(31 downto 0) <= \^rp_rp_shl_tdata\(31 downto 0);
  s_rp_shl_TLAST <= \^rp_rp_shl_tlast\;
  s_rp_shr_TDATA(31 downto 0) <= \^rp_rp_shr_tdata\(31 downto 0);
  s_rp_shr_TLAST <= \^rp_rp_shr_tlast\;
  s_rp_sub_TDATA(31 downto 0) <= \^rp_rp_sub_tdata\(31 downto 0);
  s_rp_sub_TLAST <= \^rp_rp_sub_tlast\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
axi_stream_decouple_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => s_axis_ctrl_aresetn,
      I1 => axi_stream_decouple,
      I2 => s_axis_ctrl_tvalid,
      I3 => s_axis_ctrl_tdata(0),
      O => axi_stream_decouple_i_1_n_0
    );
axi_stream_decouple_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => axi_stream_decouple_i_1_n_0,
      Q => axi_stream_decouple,
      R => '0'
    );
\b_rp_add.i_cdc\: entity work.prd_cdc_sync
     port map (
      aclk => aclk,
      prmry_in => \^m_axis_status_tdata\(0),
      rp_add_decouple_status => rp_add_decouple_status,
      rp_add_ref_clk => rp_add_ref_clk,
      rp_rp_add_TREADY => rp_rp_add_TREADY,
      rp_rp_add_TVALID => rp_rp_add_TVALID,
      s_rp_add_TREADY => s_rp_add_TREADY,
      s_rp_add_TVALID => s_rp_add_TVALID
    );
\b_rp_comp.i_cdc\: entity work.prd_cdc_sync_0
     port map (
      aclk => aclk,
      prmry_in => \^m_axis_status_tdata\(0),
      rp_comp_decouple_status => rp_comp_decouple_status,
      rp_comp_ref_clk => rp_comp_ref_clk,
      rp_rp_comp_TREADY => rp_rp_comp_TREADY,
      rp_rp_comp_TVALID => rp_rp_comp_TVALID,
      s_rp_comp_TREADY => s_rp_comp_TREADY,
      s_rp_comp_TVALID => s_rp_comp_TVALID
    );
\b_rp_dec.i_cdc\: entity work.prd_cdc_sync_1
     port map (
      aclk => aclk,
      prmry_in => \^m_axis_status_tdata\(0),
      rp_dec_decouple_status => rp_dec_decouple_status,
      rp_dec_ref_clk => rp_dec_ref_clk,
      rp_rp_dec_TREADY => rp_rp_dec_TREADY,
      rp_rp_dec_TVALID => rp_rp_dec_TVALID,
      s_rp_dec_TREADY => s_rp_dec_TREADY,
      s_rp_dec_TVALID => s_rp_dec_TVALID
    );
\b_rp_div.i_cdc\: entity work.prd_cdc_sync_2
     port map (
      aclk => aclk,
      prmry_in => \^m_axis_status_tdata\(0),
      rp_div_decouple_status => rp_div_decouple_status,
      rp_div_ref_clk => rp_div_ref_clk,
      rp_rp_div_TREADY => rp_rp_div_TREADY,
      rp_rp_div_TVALID => rp_rp_div_TVALID,
      s_rp_div_TREADY => s_rp_div_TREADY,
      s_rp_div_TVALID => s_rp_div_TVALID
    );
\b_rp_inc.i_cdc\: entity work.prd_cdc_sync_3
     port map (
      aclk => aclk,
      prmry_in => \^m_axis_status_tdata\(0),
      rp_inc_decouple_status => rp_inc_decouple_status,
      rp_inc_ref_clk => rp_inc_ref_clk,
      rp_rp_inc_TREADY => rp_rp_inc_TREADY,
      rp_rp_inc_TVALID => rp_rp_inc_TVALID,
      s_rp_inc_TREADY => s_rp_inc_TREADY,
      s_rp_inc_TVALID => s_rp_inc_TVALID
    );
\b_rp_mod.i_cdc\: entity work.prd_cdc_sync_4
     port map (
      aclk => aclk,
      prmry_in => \^m_axis_status_tdata\(0),
      rp_mod_decouple_status => rp_mod_decouple_status,
      rp_mod_ref_clk => rp_mod_ref_clk,
      rp_rp_mod_TREADY => rp_rp_mod_TREADY,
      rp_rp_mod_TVALID => rp_rp_mod_TVALID,
      s_rp_mod_TREADY => s_rp_mod_TREADY,
      s_rp_mod_TVALID => s_rp_mod_TVALID
    );
\b_rp_mul.i_cdc\: entity work.prd_cdc_sync_5
     port map (
      aclk => aclk,
      prmry_in => \^m_axis_status_tdata\(0),
      rp_mul_decouple_status => rp_mul_decouple_status,
      rp_mul_ref_clk => rp_mul_ref_clk,
      rp_rp_mul_TREADY => rp_rp_mul_TREADY,
      rp_rp_mul_TVALID => rp_rp_mul_TVALID,
      s_rp_mul_TREADY => s_rp_mul_TREADY,
      s_rp_mul_TVALID => s_rp_mul_TVALID
    );
\b_rp_mux.i_cdc\: entity work.prd_cdc_sync_6
     port map (
      aclk => aclk,
      prmry_in => \^m_axis_status_tdata\(0),
      rp_mux_decouple_status => rp_mux_decouple_status,
      rp_mux_ref_clk => rp_mux_ref_clk,
      rp_rp_mux_TREADY => rp_rp_mux_TREADY,
      rp_rp_mux_TVALID => rp_rp_mux_TVALID,
      s_rp_mux_TREADY => s_rp_mux_TREADY,
      s_rp_mux_TVALID => s_rp_mux_TVALID
    );
\b_rp_reg.i_cdc\: entity work.prd_cdc_sync_7
     port map (
      aclk => aclk,
      prmry_in => \^m_axis_status_tdata\(0),
      rp_reg_decouple_status => rp_reg_decouple_status,
      rp_reg_ref_clk => rp_reg_ref_clk,
      rp_rp_reg_TREADY => rp_rp_reg_TREADY,
      rp_rp_reg_TVALID => rp_rp_reg_TVALID,
      s_rp_reg_TREADY => s_rp_reg_TREADY,
      s_rp_reg_TVALID => s_rp_reg_TVALID
    );
\b_rp_shl.i_cdc\: entity work.prd_cdc_sync_8
     port map (
      aclk => aclk,
      prmry_in => \^m_axis_status_tdata\(0),
      rp_rp_shl_TREADY => rp_rp_shl_TREADY,
      rp_rp_shl_TVALID => rp_rp_shl_TVALID,
      rp_shl_decouple_status => rp_shl_decouple_status,
      rp_shl_ref_clk => rp_shl_ref_clk,
      s_rp_shl_TREADY => s_rp_shl_TREADY,
      s_rp_shl_TVALID => s_rp_shl_TVALID
    );
\b_rp_shr.i_cdc\: entity work.prd_cdc_sync_9
     port map (
      aclk => aclk,
      prmry_in => \^m_axis_status_tdata\(0),
      rp_rp_shr_TREADY => rp_rp_shr_TREADY,
      rp_rp_shr_TVALID => rp_rp_shr_TVALID,
      rp_shr_decouple_status => rp_shr_decouple_status,
      rp_shr_ref_clk => rp_shr_ref_clk,
      s_rp_shr_TREADY => s_rp_shr_TREADY,
      s_rp_shr_TVALID => s_rp_shr_TVALID
    );
\b_rp_sub.i_cdc\: entity work.prd_cdc_sync_10
     port map (
      aclk => aclk,
      prmry_in => \^m_axis_status_tdata\(0),
      rp_rp_sub_TREADY => rp_rp_sub_TREADY,
      rp_rp_sub_TVALID => rp_rp_sub_TVALID,
      rp_sub_decouple_status => rp_sub_decouple_status,
      rp_sub_ref_clk => rp_sub_ref_clk,
      s_rp_sub_TREADY => s_rp_sub_TREADY,
      s_rp_sub_TVALID => s_rp_sub_TVALID
    );
i_axi_lite_if: entity work.prd_axi_lite_if
     port map (
      aclk => aclk,
      axi_stream_decouple => axi_stream_decouple,
      decouple => decouple,
      prmry_in => \^m_axis_status_tdata\(0),
      s_axi_reg_araddr(0) => s_axi_reg_araddr(0),
      s_axi_reg_aresetn => s_axi_reg_aresetn,
      s_axi_reg_arready => s_axi_reg_arready,
      s_axi_reg_arvalid => s_axi_reg_arvalid,
      s_axi_reg_awaddr(0) => s_axi_reg_awaddr(0),
      s_axi_reg_awvalid => s_axi_reg_awvalid,
      s_axi_reg_bready => s_axi_reg_bready,
      s_axi_reg_bresp(0) => \^s_axi_reg_bresp\(1),
      s_axi_reg_bvalid => \^s_axi_reg_bvalid\,
      s_axi_reg_rdata(0) => \^s_axi_reg_rdata\(0),
      s_axi_reg_rready => s_axi_reg_rready,
      s_axi_reg_rresp(0) => \^s_axi_reg_rresp\(1),
      s_axi_reg_rvalid => s_axi_reg_rvalid,
      s_axi_reg_wdata(0) => s_axi_reg_wdata(0),
      s_axi_reg_wvalid => s_axi_reg_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity prd is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of prd : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of prd : entity is "prd,prd_prd,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of prd : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of prd : entity is "prd_prd,Vivado 2017.4";
end prd;

architecture STRUCTURE of prd is
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of U0 : label is "zynq";
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
  attribute x_interface_info : string;
  attribute x_interface_info of aclk : signal is "xilinx.com:signal:clock:1.0 aclk_CLOCK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of aclk : signal is "XIL_INTERFACENAME aclk_CLOCK, FREQ_HZ 100000000, PHASE 0.000, ASSOCIATED_BUSIF s_axi_reg:m_axis_status:s_axis_ctrl";
  attribute x_interface_info of m_axis_status_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis_status TVALID";
  attribute x_interface_info of rp_add_ref_clk : signal is "xilinx.com:signal:clock:1.0 rp_add_ref_clk_CLOCK CLK";
  attribute x_interface_parameter of rp_add_ref_clk : signal is "XIL_INTERFACENAME rp_add_ref_clk_CLOCK, FREQ_HZ 100000000, PHASE 0.000, ASSOCIATED_BUSIF s_rp_add:rp_rp_add";
  attribute x_interface_info of rp_comp_ref_clk : signal is "xilinx.com:signal:clock:1.0 rp_comp_ref_clk_CLOCK CLK";
  attribute x_interface_parameter of rp_comp_ref_clk : signal is "XIL_INTERFACENAME rp_comp_ref_clk_CLOCK, FREQ_HZ 100000000, PHASE 0.000, ASSOCIATED_BUSIF s_rp_comp:rp_rp_comp";
  attribute x_interface_info of rp_dec_ref_clk : signal is "xilinx.com:signal:clock:1.0 rp_dec_ref_clk_CLOCK CLK";
  attribute x_interface_parameter of rp_dec_ref_clk : signal is "XIL_INTERFACENAME rp_dec_ref_clk_CLOCK, FREQ_HZ 100000000, PHASE 0.000, ASSOCIATED_BUSIF s_rp_dec:rp_rp_dec";
  attribute x_interface_info of rp_div_ref_clk : signal is "xilinx.com:signal:clock:1.0 rp_div_ref_clk_CLOCK CLK";
  attribute x_interface_parameter of rp_div_ref_clk : signal is "XIL_INTERFACENAME rp_div_ref_clk_CLOCK, FREQ_HZ 100000000, PHASE 0.000, ASSOCIATED_BUSIF s_rp_div:rp_rp_div";
  attribute x_interface_info of rp_inc_ref_clk : signal is "xilinx.com:signal:clock:1.0 rp_inc_ref_clk_CLOCK CLK";
  attribute x_interface_parameter of rp_inc_ref_clk : signal is "XIL_INTERFACENAME rp_inc_ref_clk_CLOCK, FREQ_HZ 100000000, PHASE 0.000, ASSOCIATED_BUSIF s_rp_inc:rp_rp_inc";
  attribute x_interface_info of rp_mod_ref_clk : signal is "xilinx.com:signal:clock:1.0 rp_mod_ref_clk_CLOCK CLK";
  attribute x_interface_parameter of rp_mod_ref_clk : signal is "XIL_INTERFACENAME rp_mod_ref_clk_CLOCK, FREQ_HZ 100000000, PHASE 0.000, ASSOCIATED_BUSIF s_rp_mod:rp_rp_mod";
  attribute x_interface_info of rp_mul_ref_clk : signal is "xilinx.com:signal:clock:1.0 rp_mul_ref_clk_CLOCK CLK";
  attribute x_interface_parameter of rp_mul_ref_clk : signal is "XIL_INTERFACENAME rp_mul_ref_clk_CLOCK, FREQ_HZ 100000000, PHASE 0.000, ASSOCIATED_BUSIF s_rp_mul:rp_rp_mul";
  attribute x_interface_info of rp_mux_ref_clk : signal is "xilinx.com:signal:clock:1.0 rp_mux_ref_clk_CLOCK CLK";
  attribute x_interface_parameter of rp_mux_ref_clk : signal is "XIL_INTERFACENAME rp_mux_ref_clk_CLOCK, FREQ_HZ 100000000, PHASE 0.000, ASSOCIATED_BUSIF s_rp_mux:rp_rp_mux";
  attribute x_interface_info of rp_reg_ref_clk : signal is "xilinx.com:signal:clock:1.0 rp_reg_ref_clk_CLOCK CLK";
  attribute x_interface_parameter of rp_reg_ref_clk : signal is "XIL_INTERFACENAME rp_reg_ref_clk_CLOCK, FREQ_HZ 100000000, PHASE 0.000, ASSOCIATED_BUSIF s_rp_reg:rp_rp_reg";
  attribute x_interface_info of rp_rp_add_TLAST : signal is "xilinx.com:interface:axis:1.0 rp_rp_add TLAST";
  attribute x_interface_info of rp_rp_add_TREADY : signal is "xilinx.com:interface:axis:1.0 rp_rp_add TREADY";
  attribute x_interface_info of rp_rp_add_TVALID : signal is "xilinx.com:interface:axis:1.0 rp_rp_add TVALID";
  attribute x_interface_parameter of rp_rp_add_TVALID : signal is "XIL_INTERFACENAME rp_rp_add, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, MISC.CLK_REQUIRED FALSE";
  attribute x_interface_info of rp_rp_comp_TLAST : signal is "xilinx.com:interface:axis:1.0 rp_rp_comp TLAST";
  attribute x_interface_info of rp_rp_comp_TREADY : signal is "xilinx.com:interface:axis:1.0 rp_rp_comp TREADY";
  attribute x_interface_info of rp_rp_comp_TVALID : signal is "xilinx.com:interface:axis:1.0 rp_rp_comp TVALID";
  attribute x_interface_parameter of rp_rp_comp_TVALID : signal is "XIL_INTERFACENAME rp_rp_comp, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, MISC.CLK_REQUIRED FALSE";
  attribute x_interface_info of rp_rp_dec_TLAST : signal is "xilinx.com:interface:axis:1.0 rp_rp_dec TLAST";
  attribute x_interface_info of rp_rp_dec_TREADY : signal is "xilinx.com:interface:axis:1.0 rp_rp_dec TREADY";
  attribute x_interface_info of rp_rp_dec_TVALID : signal is "xilinx.com:interface:axis:1.0 rp_rp_dec TVALID";
  attribute x_interface_parameter of rp_rp_dec_TVALID : signal is "XIL_INTERFACENAME rp_rp_dec, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, MISC.CLK_REQUIRED FALSE";
  attribute x_interface_info of rp_rp_div_TLAST : signal is "xilinx.com:interface:axis:1.0 rp_rp_div TLAST";
  attribute x_interface_info of rp_rp_div_TREADY : signal is "xilinx.com:interface:axis:1.0 rp_rp_div TREADY";
  attribute x_interface_info of rp_rp_div_TVALID : signal is "xilinx.com:interface:axis:1.0 rp_rp_div TVALID";
  attribute x_interface_parameter of rp_rp_div_TVALID : signal is "XIL_INTERFACENAME rp_rp_div, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, MISC.CLK_REQUIRED FALSE";
  attribute x_interface_info of rp_rp_inc_TLAST : signal is "xilinx.com:interface:axis:1.0 rp_rp_inc TLAST";
  attribute x_interface_info of rp_rp_inc_TREADY : signal is "xilinx.com:interface:axis:1.0 rp_rp_inc TREADY";
  attribute x_interface_info of rp_rp_inc_TVALID : signal is "xilinx.com:interface:axis:1.0 rp_rp_inc TVALID";
  attribute x_interface_parameter of rp_rp_inc_TVALID : signal is "XIL_INTERFACENAME rp_rp_inc, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, MISC.CLK_REQUIRED FALSE";
  attribute x_interface_info of rp_rp_mod_TLAST : signal is "xilinx.com:interface:axis:1.0 rp_rp_mod TLAST";
  attribute x_interface_info of rp_rp_mod_TREADY : signal is "xilinx.com:interface:axis:1.0 rp_rp_mod TREADY";
  attribute x_interface_info of rp_rp_mod_TVALID : signal is "xilinx.com:interface:axis:1.0 rp_rp_mod TVALID";
  attribute x_interface_parameter of rp_rp_mod_TVALID : signal is "XIL_INTERFACENAME rp_rp_mod, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, MISC.CLK_REQUIRED FALSE";
  attribute x_interface_info of rp_rp_mul_TLAST : signal is "xilinx.com:interface:axis:1.0 rp_rp_mul TLAST";
  attribute x_interface_info of rp_rp_mul_TREADY : signal is "xilinx.com:interface:axis:1.0 rp_rp_mul TREADY";
  attribute x_interface_info of rp_rp_mul_TVALID : signal is "xilinx.com:interface:axis:1.0 rp_rp_mul TVALID";
  attribute x_interface_parameter of rp_rp_mul_TVALID : signal is "XIL_INTERFACENAME rp_rp_mul, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, MISC.CLK_REQUIRED FALSE";
  attribute x_interface_info of rp_rp_mux_TLAST : signal is "xilinx.com:interface:axis:1.0 rp_rp_mux TLAST";
  attribute x_interface_info of rp_rp_mux_TREADY : signal is "xilinx.com:interface:axis:1.0 rp_rp_mux TREADY";
  attribute x_interface_info of rp_rp_mux_TVALID : signal is "xilinx.com:interface:axis:1.0 rp_rp_mux TVALID";
  attribute x_interface_parameter of rp_rp_mux_TVALID : signal is "XIL_INTERFACENAME rp_rp_mux, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, MISC.CLK_REQUIRED FALSE";
  attribute x_interface_info of rp_rp_reg_TLAST : signal is "xilinx.com:interface:axis:1.0 rp_rp_reg TLAST";
  attribute x_interface_info of rp_rp_reg_TREADY : signal is "xilinx.com:interface:axis:1.0 rp_rp_reg TREADY";
  attribute x_interface_info of rp_rp_reg_TVALID : signal is "xilinx.com:interface:axis:1.0 rp_rp_reg TVALID";
  attribute x_interface_parameter of rp_rp_reg_TVALID : signal is "XIL_INTERFACENAME rp_rp_reg, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, MISC.CLK_REQUIRED FALSE";
  attribute x_interface_info of rp_rp_shl_TLAST : signal is "xilinx.com:interface:axis:1.0 rp_rp_shl TLAST";
  attribute x_interface_info of rp_rp_shl_TREADY : signal is "xilinx.com:interface:axis:1.0 rp_rp_shl TREADY";
  attribute x_interface_info of rp_rp_shl_TVALID : signal is "xilinx.com:interface:axis:1.0 rp_rp_shl TVALID";
  attribute x_interface_parameter of rp_rp_shl_TVALID : signal is "XIL_INTERFACENAME rp_rp_shl, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, MISC.CLK_REQUIRED FALSE";
  attribute x_interface_info of rp_rp_shr_TLAST : signal is "xilinx.com:interface:axis:1.0 rp_rp_shr TLAST";
  attribute x_interface_info of rp_rp_shr_TREADY : signal is "xilinx.com:interface:axis:1.0 rp_rp_shr TREADY";
  attribute x_interface_info of rp_rp_shr_TVALID : signal is "xilinx.com:interface:axis:1.0 rp_rp_shr TVALID";
  attribute x_interface_parameter of rp_rp_shr_TVALID : signal is "XIL_INTERFACENAME rp_rp_shr, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, MISC.CLK_REQUIRED FALSE";
  attribute x_interface_info of rp_rp_sub_TLAST : signal is "xilinx.com:interface:axis:1.0 rp_rp_sub TLAST";
  attribute x_interface_info of rp_rp_sub_TREADY : signal is "xilinx.com:interface:axis:1.0 rp_rp_sub TREADY";
  attribute x_interface_info of rp_rp_sub_TVALID : signal is "xilinx.com:interface:axis:1.0 rp_rp_sub TVALID";
  attribute x_interface_parameter of rp_rp_sub_TVALID : signal is "XIL_INTERFACENAME rp_rp_sub, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, MISC.CLK_REQUIRED FALSE";
  attribute x_interface_info of rp_shl_ref_clk : signal is "xilinx.com:signal:clock:1.0 rp_shl_ref_clk_CLOCK CLK";
  attribute x_interface_parameter of rp_shl_ref_clk : signal is "XIL_INTERFACENAME rp_shl_ref_clk_CLOCK, FREQ_HZ 100000000, PHASE 0.000, ASSOCIATED_BUSIF s_rp_shl:rp_rp_shl";
  attribute x_interface_info of rp_shr_ref_clk : signal is "xilinx.com:signal:clock:1.0 rp_shr_ref_clk_CLOCK CLK";
  attribute x_interface_parameter of rp_shr_ref_clk : signal is "XIL_INTERFACENAME rp_shr_ref_clk_CLOCK, FREQ_HZ 100000000, PHASE 0.000, ASSOCIATED_BUSIF s_rp_shr:rp_rp_shr";
  attribute x_interface_info of rp_sub_ref_clk : signal is "xilinx.com:signal:clock:1.0 rp_sub_ref_clk_CLOCK CLK";
  attribute x_interface_parameter of rp_sub_ref_clk : signal is "XIL_INTERFACENAME rp_sub_ref_clk_CLOCK, FREQ_HZ 100000000, PHASE 0.000, ASSOCIATED_BUSIF s_rp_sub:rp_rp_sub";
  attribute x_interface_info of s_axi_reg_aresetn : signal is "xilinx.com:signal:reset:1.0 AXI_RESET RST";
  attribute x_interface_parameter of s_axi_reg_aresetn : signal is "XIL_INTERFACENAME AXI_RESET, POLARITY ACTIVE_LOW";
  attribute x_interface_info of s_axi_reg_arready : signal is "xilinx.com:interface:aximm:1.0 s_axi_reg ARREADY";
  attribute x_interface_info of s_axi_reg_arvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_reg ARVALID";
  attribute x_interface_info of s_axi_reg_awready : signal is "xilinx.com:interface:aximm:1.0 s_axi_reg AWREADY";
  attribute x_interface_info of s_axi_reg_awvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_reg AWVALID";
  attribute x_interface_info of s_axi_reg_bready : signal is "xilinx.com:interface:aximm:1.0 s_axi_reg BREADY";
  attribute x_interface_info of s_axi_reg_bvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_reg BVALID";
  attribute x_interface_info of s_axi_reg_rready : signal is "xilinx.com:interface:aximm:1.0 s_axi_reg RREADY";
  attribute x_interface_info of s_axi_reg_rvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_reg RVALID";
  attribute x_interface_info of s_axi_reg_wready : signal is "xilinx.com:interface:aximm:1.0 s_axi_reg WREADY";
  attribute x_interface_info of s_axi_reg_wvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_reg WVALID";
  attribute x_interface_info of s_axis_ctrl_aresetn : signal is "xilinx.com:signal:reset:1.0 AXIS_CONTROL_RESET RST";
  attribute x_interface_parameter of s_axis_ctrl_aresetn : signal is "XIL_INTERFACENAME AXIS_CONTROL_RESET, POLARITY ACTIVE_LOW";
  attribute x_interface_info of s_axis_ctrl_tready : signal is "xilinx.com:interface:axis:1.0 s_axis_ctrl TREADY";
  attribute x_interface_info of s_axis_ctrl_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis_ctrl TVALID";
  attribute x_interface_info of s_rp_add_TLAST : signal is "xilinx.com:interface:axis:1.0 s_rp_add TLAST";
  attribute x_interface_info of s_rp_add_TREADY : signal is "xilinx.com:interface:axis:1.0 s_rp_add TREADY";
  attribute x_interface_info of s_rp_add_TVALID : signal is "xilinx.com:interface:axis:1.0 s_rp_add TVALID";
  attribute x_interface_parameter of s_rp_add_TVALID : signal is "XIL_INTERFACENAME s_rp_add, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, MISC.CLK_REQUIRED FALSE";
  attribute x_interface_info of s_rp_comp_TLAST : signal is "xilinx.com:interface:axis:1.0 s_rp_comp TLAST";
  attribute x_interface_info of s_rp_comp_TREADY : signal is "xilinx.com:interface:axis:1.0 s_rp_comp TREADY";
  attribute x_interface_info of s_rp_comp_TVALID : signal is "xilinx.com:interface:axis:1.0 s_rp_comp TVALID";
  attribute x_interface_parameter of s_rp_comp_TVALID : signal is "XIL_INTERFACENAME s_rp_comp, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, MISC.CLK_REQUIRED FALSE";
  attribute x_interface_info of s_rp_dec_TLAST : signal is "xilinx.com:interface:axis:1.0 s_rp_dec TLAST";
  attribute x_interface_info of s_rp_dec_TREADY : signal is "xilinx.com:interface:axis:1.0 s_rp_dec TREADY";
  attribute x_interface_info of s_rp_dec_TVALID : signal is "xilinx.com:interface:axis:1.0 s_rp_dec TVALID";
  attribute x_interface_parameter of s_rp_dec_TVALID : signal is "XIL_INTERFACENAME s_rp_dec, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, MISC.CLK_REQUIRED FALSE";
  attribute x_interface_info of s_rp_div_TLAST : signal is "xilinx.com:interface:axis:1.0 s_rp_div TLAST";
  attribute x_interface_info of s_rp_div_TREADY : signal is "xilinx.com:interface:axis:1.0 s_rp_div TREADY";
  attribute x_interface_info of s_rp_div_TVALID : signal is "xilinx.com:interface:axis:1.0 s_rp_div TVALID";
  attribute x_interface_parameter of s_rp_div_TVALID : signal is "XIL_INTERFACENAME s_rp_div, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, MISC.CLK_REQUIRED FALSE";
  attribute x_interface_info of s_rp_inc_TLAST : signal is "xilinx.com:interface:axis:1.0 s_rp_inc TLAST";
  attribute x_interface_info of s_rp_inc_TREADY : signal is "xilinx.com:interface:axis:1.0 s_rp_inc TREADY";
  attribute x_interface_info of s_rp_inc_TVALID : signal is "xilinx.com:interface:axis:1.0 s_rp_inc TVALID";
  attribute x_interface_parameter of s_rp_inc_TVALID : signal is "XIL_INTERFACENAME s_rp_inc, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, MISC.CLK_REQUIRED FALSE";
  attribute x_interface_info of s_rp_mod_TLAST : signal is "xilinx.com:interface:axis:1.0 s_rp_mod TLAST";
  attribute x_interface_info of s_rp_mod_TREADY : signal is "xilinx.com:interface:axis:1.0 s_rp_mod TREADY";
  attribute x_interface_info of s_rp_mod_TVALID : signal is "xilinx.com:interface:axis:1.0 s_rp_mod TVALID";
  attribute x_interface_parameter of s_rp_mod_TVALID : signal is "XIL_INTERFACENAME s_rp_mod, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, MISC.CLK_REQUIRED FALSE";
  attribute x_interface_info of s_rp_mul_TLAST : signal is "xilinx.com:interface:axis:1.0 s_rp_mul TLAST";
  attribute x_interface_info of s_rp_mul_TREADY : signal is "xilinx.com:interface:axis:1.0 s_rp_mul TREADY";
  attribute x_interface_info of s_rp_mul_TVALID : signal is "xilinx.com:interface:axis:1.0 s_rp_mul TVALID";
  attribute x_interface_parameter of s_rp_mul_TVALID : signal is "XIL_INTERFACENAME s_rp_mul, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, MISC.CLK_REQUIRED FALSE";
  attribute x_interface_info of s_rp_mux_TLAST : signal is "xilinx.com:interface:axis:1.0 s_rp_mux TLAST";
  attribute x_interface_info of s_rp_mux_TREADY : signal is "xilinx.com:interface:axis:1.0 s_rp_mux TREADY";
  attribute x_interface_info of s_rp_mux_TVALID : signal is "xilinx.com:interface:axis:1.0 s_rp_mux TVALID";
  attribute x_interface_parameter of s_rp_mux_TVALID : signal is "XIL_INTERFACENAME s_rp_mux, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, MISC.CLK_REQUIRED FALSE";
  attribute x_interface_info of s_rp_reg_TLAST : signal is "xilinx.com:interface:axis:1.0 s_rp_reg TLAST";
  attribute x_interface_info of s_rp_reg_TREADY : signal is "xilinx.com:interface:axis:1.0 s_rp_reg TREADY";
  attribute x_interface_info of s_rp_reg_TVALID : signal is "xilinx.com:interface:axis:1.0 s_rp_reg TVALID";
  attribute x_interface_parameter of s_rp_reg_TVALID : signal is "XIL_INTERFACENAME s_rp_reg, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, MISC.CLK_REQUIRED FALSE";
  attribute x_interface_info of s_rp_shl_TLAST : signal is "xilinx.com:interface:axis:1.0 s_rp_shl TLAST";
  attribute x_interface_info of s_rp_shl_TREADY : signal is "xilinx.com:interface:axis:1.0 s_rp_shl TREADY";
  attribute x_interface_info of s_rp_shl_TVALID : signal is "xilinx.com:interface:axis:1.0 s_rp_shl TVALID";
  attribute x_interface_parameter of s_rp_shl_TVALID : signal is "XIL_INTERFACENAME s_rp_shl, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, MISC.CLK_REQUIRED FALSE";
  attribute x_interface_info of s_rp_shr_TLAST : signal is "xilinx.com:interface:axis:1.0 s_rp_shr TLAST";
  attribute x_interface_info of s_rp_shr_TREADY : signal is "xilinx.com:interface:axis:1.0 s_rp_shr TREADY";
  attribute x_interface_info of s_rp_shr_TVALID : signal is "xilinx.com:interface:axis:1.0 s_rp_shr TVALID";
  attribute x_interface_parameter of s_rp_shr_TVALID : signal is "XIL_INTERFACENAME s_rp_shr, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, MISC.CLK_REQUIRED FALSE";
  attribute x_interface_info of s_rp_sub_TLAST : signal is "xilinx.com:interface:axis:1.0 s_rp_sub TLAST";
  attribute x_interface_info of s_rp_sub_TREADY : signal is "xilinx.com:interface:axis:1.0 s_rp_sub TREADY";
  attribute x_interface_info of s_rp_sub_TVALID : signal is "xilinx.com:interface:axis:1.0 s_rp_sub TVALID";
  attribute x_interface_parameter of s_rp_sub_TVALID : signal is "XIL_INTERFACENAME s_rp_sub, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, MISC.CLK_REQUIRED FALSE";
  attribute x_interface_info of m_axis_status_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis_status TDATA";
  attribute x_interface_parameter of m_axis_status_tdata : signal is "XIL_INTERFACENAME m_axis_status, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef";
  attribute x_interface_info of rp_rp_add_TDATA : signal is "xilinx.com:interface:axis:1.0 rp_rp_add TDATA";
  attribute x_interface_info of rp_rp_comp_TDATA : signal is "xilinx.com:interface:axis:1.0 rp_rp_comp TDATA";
  attribute x_interface_info of rp_rp_dec_TDATA : signal is "xilinx.com:interface:axis:1.0 rp_rp_dec TDATA";
  attribute x_interface_info of rp_rp_div_TDATA : signal is "xilinx.com:interface:axis:1.0 rp_rp_div TDATA";
  attribute x_interface_info of rp_rp_inc_TDATA : signal is "xilinx.com:interface:axis:1.0 rp_rp_inc TDATA";
  attribute x_interface_info of rp_rp_mod_TDATA : signal is "xilinx.com:interface:axis:1.0 rp_rp_mod TDATA";
  attribute x_interface_info of rp_rp_mul_TDATA : signal is "xilinx.com:interface:axis:1.0 rp_rp_mul TDATA";
  attribute x_interface_info of rp_rp_mux_TDATA : signal is "xilinx.com:interface:axis:1.0 rp_rp_mux TDATA";
  attribute x_interface_info of rp_rp_reg_TDATA : signal is "xilinx.com:interface:axis:1.0 rp_rp_reg TDATA";
  attribute x_interface_info of rp_rp_shl_TDATA : signal is "xilinx.com:interface:axis:1.0 rp_rp_shl TDATA";
  attribute x_interface_info of rp_rp_shr_TDATA : signal is "xilinx.com:interface:axis:1.0 rp_rp_shr TDATA";
  attribute x_interface_info of rp_rp_sub_TDATA : signal is "xilinx.com:interface:axis:1.0 rp_rp_sub TDATA";
  attribute x_interface_info of s_axi_reg_araddr : signal is "xilinx.com:interface:aximm:1.0 s_axi_reg ARADDR";
  attribute x_interface_info of s_axi_reg_awaddr : signal is "xilinx.com:interface:aximm:1.0 s_axi_reg AWADDR";
  attribute x_interface_parameter of s_axi_reg_awaddr : signal is "XIL_INTERFACENAME s_axi_reg, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 1, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  attribute x_interface_info of s_axi_reg_bresp : signal is "xilinx.com:interface:aximm:1.0 s_axi_reg BRESP";
  attribute x_interface_info of s_axi_reg_rdata : signal is "xilinx.com:interface:aximm:1.0 s_axi_reg RDATA";
  attribute x_interface_info of s_axi_reg_rresp : signal is "xilinx.com:interface:aximm:1.0 s_axi_reg RRESP";
  attribute x_interface_info of s_axi_reg_wdata : signal is "xilinx.com:interface:aximm:1.0 s_axi_reg WDATA";
  attribute x_interface_info of s_axis_ctrl_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis_ctrl TDATA";
  attribute x_interface_parameter of s_axis_ctrl_tdata : signal is "XIL_INTERFACENAME s_axis_ctrl, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef";
  attribute x_interface_info of s_rp_add_TDATA : signal is "xilinx.com:interface:axis:1.0 s_rp_add TDATA";
  attribute x_interface_info of s_rp_comp_TDATA : signal is "xilinx.com:interface:axis:1.0 s_rp_comp TDATA";
  attribute x_interface_info of s_rp_dec_TDATA : signal is "xilinx.com:interface:axis:1.0 s_rp_dec TDATA";
  attribute x_interface_info of s_rp_div_TDATA : signal is "xilinx.com:interface:axis:1.0 s_rp_div TDATA";
  attribute x_interface_info of s_rp_inc_TDATA : signal is "xilinx.com:interface:axis:1.0 s_rp_inc TDATA";
  attribute x_interface_info of s_rp_mod_TDATA : signal is "xilinx.com:interface:axis:1.0 s_rp_mod TDATA";
  attribute x_interface_info of s_rp_mul_TDATA : signal is "xilinx.com:interface:axis:1.0 s_rp_mul TDATA";
  attribute x_interface_info of s_rp_mux_TDATA : signal is "xilinx.com:interface:axis:1.0 s_rp_mux TDATA";
  attribute x_interface_info of s_rp_reg_TDATA : signal is "xilinx.com:interface:axis:1.0 s_rp_reg TDATA";
  attribute x_interface_info of s_rp_shl_TDATA : signal is "xilinx.com:interface:axis:1.0 s_rp_shl TDATA";
  attribute x_interface_info of s_rp_shr_TDATA : signal is "xilinx.com:interface:axis:1.0 s_rp_shr TDATA";
  attribute x_interface_info of s_rp_sub_TDATA : signal is "xilinx.com:interface:axis:1.0 s_rp_sub TDATA";
begin
U0: entity work.prd_prd_prd
     port map (
      aclk => aclk,
      decouple => decouple,
      decouple_status => decouple_status,
      m_axis_status_tdata(31 downto 0) => m_axis_status_tdata(31 downto 0),
      m_axis_status_tvalid => m_axis_status_tvalid,
      rp_add_decouple_status => rp_add_decouple_status,
      rp_add_ref_clk => rp_add_ref_clk,
      rp_comp_decouple_status => rp_comp_decouple_status,
      rp_comp_ref_clk => rp_comp_ref_clk,
      rp_dec_decouple_status => rp_dec_decouple_status,
      rp_dec_ref_clk => rp_dec_ref_clk,
      rp_div_decouple_status => rp_div_decouple_status,
      rp_div_ref_clk => rp_div_ref_clk,
      rp_inc_decouple_status => rp_inc_decouple_status,
      rp_inc_ref_clk => rp_inc_ref_clk,
      rp_mod_decouple_status => rp_mod_decouple_status,
      rp_mod_ref_clk => rp_mod_ref_clk,
      rp_mul_decouple_status => rp_mul_decouple_status,
      rp_mul_ref_clk => rp_mul_ref_clk,
      rp_mux_decouple_status => rp_mux_decouple_status,
      rp_mux_ref_clk => rp_mux_ref_clk,
      rp_reg_decouple_status => rp_reg_decouple_status,
      rp_reg_ref_clk => rp_reg_ref_clk,
      rp_rp_add_TDATA(31 downto 0) => rp_rp_add_TDATA(31 downto 0),
      rp_rp_add_TLAST => rp_rp_add_TLAST,
      rp_rp_add_TREADY => rp_rp_add_TREADY,
      rp_rp_add_TVALID => rp_rp_add_TVALID,
      rp_rp_comp_TDATA(31 downto 0) => rp_rp_comp_TDATA(31 downto 0),
      rp_rp_comp_TLAST => rp_rp_comp_TLAST,
      rp_rp_comp_TREADY => rp_rp_comp_TREADY,
      rp_rp_comp_TVALID => rp_rp_comp_TVALID,
      rp_rp_dec_TDATA(31 downto 0) => rp_rp_dec_TDATA(31 downto 0),
      rp_rp_dec_TLAST => rp_rp_dec_TLAST,
      rp_rp_dec_TREADY => rp_rp_dec_TREADY,
      rp_rp_dec_TVALID => rp_rp_dec_TVALID,
      rp_rp_div_TDATA(31 downto 0) => rp_rp_div_TDATA(31 downto 0),
      rp_rp_div_TLAST => rp_rp_div_TLAST,
      rp_rp_div_TREADY => rp_rp_div_TREADY,
      rp_rp_div_TVALID => rp_rp_div_TVALID,
      rp_rp_inc_TDATA(31 downto 0) => rp_rp_inc_TDATA(31 downto 0),
      rp_rp_inc_TLAST => rp_rp_inc_TLAST,
      rp_rp_inc_TREADY => rp_rp_inc_TREADY,
      rp_rp_inc_TVALID => rp_rp_inc_TVALID,
      rp_rp_mod_TDATA(31 downto 0) => rp_rp_mod_TDATA(31 downto 0),
      rp_rp_mod_TLAST => rp_rp_mod_TLAST,
      rp_rp_mod_TREADY => rp_rp_mod_TREADY,
      rp_rp_mod_TVALID => rp_rp_mod_TVALID,
      rp_rp_mul_TDATA(31 downto 0) => rp_rp_mul_TDATA(31 downto 0),
      rp_rp_mul_TLAST => rp_rp_mul_TLAST,
      rp_rp_mul_TREADY => rp_rp_mul_TREADY,
      rp_rp_mul_TVALID => rp_rp_mul_TVALID,
      rp_rp_mux_TDATA(31 downto 0) => rp_rp_mux_TDATA(31 downto 0),
      rp_rp_mux_TLAST => rp_rp_mux_TLAST,
      rp_rp_mux_TREADY => rp_rp_mux_TREADY,
      rp_rp_mux_TVALID => rp_rp_mux_TVALID,
      rp_rp_reg_TDATA(31 downto 0) => rp_rp_reg_TDATA(31 downto 0),
      rp_rp_reg_TLAST => rp_rp_reg_TLAST,
      rp_rp_reg_TREADY => rp_rp_reg_TREADY,
      rp_rp_reg_TVALID => rp_rp_reg_TVALID,
      rp_rp_shl_TDATA(31 downto 0) => rp_rp_shl_TDATA(31 downto 0),
      rp_rp_shl_TLAST => rp_rp_shl_TLAST,
      rp_rp_shl_TREADY => rp_rp_shl_TREADY,
      rp_rp_shl_TVALID => rp_rp_shl_TVALID,
      rp_rp_shr_TDATA(31 downto 0) => rp_rp_shr_TDATA(31 downto 0),
      rp_rp_shr_TLAST => rp_rp_shr_TLAST,
      rp_rp_shr_TREADY => rp_rp_shr_TREADY,
      rp_rp_shr_TVALID => rp_rp_shr_TVALID,
      rp_rp_sub_TDATA(31 downto 0) => rp_rp_sub_TDATA(31 downto 0),
      rp_rp_sub_TLAST => rp_rp_sub_TLAST,
      rp_rp_sub_TREADY => rp_rp_sub_TREADY,
      rp_rp_sub_TVALID => rp_rp_sub_TVALID,
      rp_shl_decouple_status => rp_shl_decouple_status,
      rp_shl_ref_clk => rp_shl_ref_clk,
      rp_shr_decouple_status => rp_shr_decouple_status,
      rp_shr_ref_clk => rp_shr_ref_clk,
      rp_sub_decouple_status => rp_sub_decouple_status,
      rp_sub_ref_clk => rp_sub_ref_clk,
      s_axi_reg_araddr(0) => s_axi_reg_araddr(0),
      s_axi_reg_aresetn => s_axi_reg_aresetn,
      s_axi_reg_arready => s_axi_reg_arready,
      s_axi_reg_arvalid => s_axi_reg_arvalid,
      s_axi_reg_awaddr(0) => s_axi_reg_awaddr(0),
      s_axi_reg_awready => s_axi_reg_awready,
      s_axi_reg_awvalid => s_axi_reg_awvalid,
      s_axi_reg_bready => s_axi_reg_bready,
      s_axi_reg_bresp(1 downto 0) => s_axi_reg_bresp(1 downto 0),
      s_axi_reg_bvalid => s_axi_reg_bvalid,
      s_axi_reg_rdata(31 downto 0) => s_axi_reg_rdata(31 downto 0),
      s_axi_reg_rready => s_axi_reg_rready,
      s_axi_reg_rresp(1 downto 0) => s_axi_reg_rresp(1 downto 0),
      s_axi_reg_rvalid => s_axi_reg_rvalid,
      s_axi_reg_wdata(31 downto 0) => s_axi_reg_wdata(31 downto 0),
      s_axi_reg_wready => s_axi_reg_wready,
      s_axi_reg_wvalid => s_axi_reg_wvalid,
      s_axis_ctrl_aresetn => s_axis_ctrl_aresetn,
      s_axis_ctrl_tdata(31 downto 0) => s_axis_ctrl_tdata(31 downto 0),
      s_axis_ctrl_tready => s_axis_ctrl_tready,
      s_axis_ctrl_tvalid => s_axis_ctrl_tvalid,
      s_rp_add_TDATA(31 downto 0) => s_rp_add_TDATA(31 downto 0),
      s_rp_add_TLAST => s_rp_add_TLAST,
      s_rp_add_TREADY => s_rp_add_TREADY,
      s_rp_add_TVALID => s_rp_add_TVALID,
      s_rp_comp_TDATA(31 downto 0) => s_rp_comp_TDATA(31 downto 0),
      s_rp_comp_TLAST => s_rp_comp_TLAST,
      s_rp_comp_TREADY => s_rp_comp_TREADY,
      s_rp_comp_TVALID => s_rp_comp_TVALID,
      s_rp_dec_TDATA(31 downto 0) => s_rp_dec_TDATA(31 downto 0),
      s_rp_dec_TLAST => s_rp_dec_TLAST,
      s_rp_dec_TREADY => s_rp_dec_TREADY,
      s_rp_dec_TVALID => s_rp_dec_TVALID,
      s_rp_div_TDATA(31 downto 0) => s_rp_div_TDATA(31 downto 0),
      s_rp_div_TLAST => s_rp_div_TLAST,
      s_rp_div_TREADY => s_rp_div_TREADY,
      s_rp_div_TVALID => s_rp_div_TVALID,
      s_rp_inc_TDATA(31 downto 0) => s_rp_inc_TDATA(31 downto 0),
      s_rp_inc_TLAST => s_rp_inc_TLAST,
      s_rp_inc_TREADY => s_rp_inc_TREADY,
      s_rp_inc_TVALID => s_rp_inc_TVALID,
      s_rp_mod_TDATA(31 downto 0) => s_rp_mod_TDATA(31 downto 0),
      s_rp_mod_TLAST => s_rp_mod_TLAST,
      s_rp_mod_TREADY => s_rp_mod_TREADY,
      s_rp_mod_TVALID => s_rp_mod_TVALID,
      s_rp_mul_TDATA(31 downto 0) => s_rp_mul_TDATA(31 downto 0),
      s_rp_mul_TLAST => s_rp_mul_TLAST,
      s_rp_mul_TREADY => s_rp_mul_TREADY,
      s_rp_mul_TVALID => s_rp_mul_TVALID,
      s_rp_mux_TDATA(31 downto 0) => s_rp_mux_TDATA(31 downto 0),
      s_rp_mux_TLAST => s_rp_mux_TLAST,
      s_rp_mux_TREADY => s_rp_mux_TREADY,
      s_rp_mux_TVALID => s_rp_mux_TVALID,
      s_rp_reg_TDATA(31 downto 0) => s_rp_reg_TDATA(31 downto 0),
      s_rp_reg_TLAST => s_rp_reg_TLAST,
      s_rp_reg_TREADY => s_rp_reg_TREADY,
      s_rp_reg_TVALID => s_rp_reg_TVALID,
      s_rp_shl_TDATA(31 downto 0) => s_rp_shl_TDATA(31 downto 0),
      s_rp_shl_TLAST => s_rp_shl_TLAST,
      s_rp_shl_TREADY => s_rp_shl_TREADY,
      s_rp_shl_TVALID => s_rp_shl_TVALID,
      s_rp_shr_TDATA(31 downto 0) => s_rp_shr_TDATA(31 downto 0),
      s_rp_shr_TLAST => s_rp_shr_TLAST,
      s_rp_shr_TREADY => s_rp_shr_TREADY,
      s_rp_shr_TVALID => s_rp_shr_TVALID,
      s_rp_sub_TDATA(31 downto 0) => s_rp_sub_TDATA(31 downto 0),
      s_rp_sub_TLAST => s_rp_sub_TLAST,
      s_rp_sub_TREADY => s_rp_sub_TREADY,
      s_rp_sub_TVALID => s_rp_sub_TVALID
    );
end STRUCTURE;
