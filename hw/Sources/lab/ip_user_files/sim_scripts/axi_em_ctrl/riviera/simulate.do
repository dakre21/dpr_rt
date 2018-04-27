onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+axi_em_ctrl -L xil_defaultlib -L xpm -L lib_pkg_v1_0_2 -L lib_srl_fifo_v1_0_2 -L emc_common_v3_0_5 -L axi_emc_v3_0_15 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.axi_em_ctrl xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {axi_em_ctrl.udo}

run -all

endsim

quit -force
