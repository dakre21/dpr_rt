onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+axi_rtl -L xil_defaultlib -L xpm -L fifo_generator_v13_1_4 -L axi_interconnect_v1_7_13 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.axi_rtl xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {axi_rtl.udo}

run -all

endsim

quit -force
