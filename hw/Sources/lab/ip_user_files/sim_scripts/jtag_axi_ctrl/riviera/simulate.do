onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+jtag_axi_ctrl -L xil_defaultlib -L xpm -L jtag_axi -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.jtag_axi_ctrl xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {jtag_axi_ctrl.udo}

run -all

endsim

quit -force
