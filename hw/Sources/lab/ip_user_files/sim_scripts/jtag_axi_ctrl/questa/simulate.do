onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib jtag_axi_ctrl_opt

do {wave.do}

view wave
view structure
view signals

do {jtag_axi_ctrl.udo}

run -all

quit -force
