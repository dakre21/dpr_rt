onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xil_defaultlib -L xpm -L lib_pkg_v1_0_2 -L lib_srl_fifo_v1_0_2 -L emc_common_v3_0_5 -L axi_emc_v3_0_15 -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.axi_em_ctrl xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {axi_em_ctrl.udo}

run -all

quit -force
