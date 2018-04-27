onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+prd -L xil_defaultlib -L xpm -L lib_cdc_v1_0_2 -L pr_decoupler_v1_0_5 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.prd xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {prd.udo}

run -all

endsim

quit -force
