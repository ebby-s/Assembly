ldm 4
xch r14
ldm 1
xch r15
ldm 3
xch r12
clb

main:
jms $3f0
ld r2
jcn az finish


jcn c1 add_one
jun main

add_one:
inc r0
clc
jun main

finish:
jms $3ff
nop