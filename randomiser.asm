ldm 1
xch r3
ldm 5
xch r5
jun dec_count

main:
clb
ld r1
add r3
xch r3
xch r1
ld r0
add r2
ral
clc
rar
xch r2
xch r0
jun dec_count

dec_count:
ld r5
jcn az dec_higher
dac
xch r5
jun main

dec_higher:
ld r4
jcn az finish
dac
xch r4
ldm 15
xch r5
jun main

finish:
jms $3ff
nop