ldm 1
xch r0
ldm 2
xch r1
ldm 3
xch r2
ldm 9
xch r3

main:
ld r0
jcn an process_ones
ld r1
jcn an process_tens
ld r2
jcn an process_huns
ld r3
jcn an process_thous
jun finish

process_ones:
clb
xch r0
add r8
xch r8
jcn c0 main
tcc
add r9
xch r9
jcn c0 main
tcc
add r10
xch r10
jcn c0 main
tcc
add r11
xch r11
jun main

process_tens:
dac
xch r1
ldm 10
xch r0
jun main

process_huns:
dac
xch r2
ldm 10
xch r1
jun main

process_thous:
dac
xch r3
ldm 10
xch r2
jun main

finish:
jms $3ff
nop
