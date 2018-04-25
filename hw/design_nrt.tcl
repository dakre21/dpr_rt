# Author: David Akre
# Description: Helper tcl script for non real time synthesis, implementation,
# and bitstream creation

####################################################################
### RP Module Definitions - Note RM to RP is 1:1 for non-rt
####################################################################

# RP1
set module   "RLE_BlobMerging"
set variant  "blob_merge"
set variant1 $variant

add_module $variant
set_attribute module $variant moduleName   $module
set_attribute module $variant vlog         [list $rtlDir/$variant/$variant.v]
set_attribute module $variant synth        ${run.rmSynth}

set module1_inst "inst_blob_merge"

# RP2
set module  "diffeq_paj_convert"
set variant "diffeq1"
set variant2 $variant

add_module $variant
set_attribute module $variant moduleName   $module
set_attribute module $variant vlog         [list $rtlDir/$variant/$variant.v]
set_attribute module $variant synth        ${run.rmSynth}

set module2_inst "inst_diffeq1"

# RP3
set module  "diffeq_f_systemC"
set variant "diffeq2"
set variant3 $variant

add_module $variant
set_attribute module $variant moduleName   $module
set_attribute module $variant vlog         [list $rtlDir/$variant/$variant.v]
set_attribute module $variant synth        ${run.rmSynth}

set module3_inst "inst_diffeq2"

# RP4
set module  "sha1"
set variant "sha"
set variant4 $variant

add_module $variant
set_attribute module $variant moduleName   $module
set_attribute module $variant vlog         [list $rtlDir/$variant/$variant.v]
set_attribute module $variant synth        ${run.rmSynth}

set module4_inst "inst_sha"

########################################################################
### Configuration (Implementation) Definition - Replicate for each Config
########################################################################
set state "implement"
set config "Config_${variant1}_${variant2}_${variant3}_${variant4}_${state}" 

add_implementation $config
set_attribute impl $config top             $top
set_attribute impl $config implXDC         [list $xdcDir/${top}.xdc]
set_attribute impl $config partitions      [list [list $static           $top          $state   ] \
                                                 [list $variant1 $module1_inst implement] \
                                                 [list $variant2 $module2_inst implement] \
                                                 [list $variant3 $module3_inst implement] \
                                                 [list $variant4 $module4_inst implement] \
                                           ]
set_attribute impl $config pr.impl         1 
set_attribute impl $config impl            ${run.prImpl} 
set_attribute impl $config verify     	   ${run.prVerify} 
set_attribute impl $config bitstream  	   ${run.writeBitstream} 


