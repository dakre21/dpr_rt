onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xil_defaultlib -L xpm -L jtag_axi -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.jtag_axi_ctrl xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {jtag_axi_ctrl.udo}

run -all

quit -force
