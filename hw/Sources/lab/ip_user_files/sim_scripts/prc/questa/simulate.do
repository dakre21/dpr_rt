onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib prc_opt

do {wave.do}

view wave
view structure
view signals

do {prc.udo}

run -all

quit -force
