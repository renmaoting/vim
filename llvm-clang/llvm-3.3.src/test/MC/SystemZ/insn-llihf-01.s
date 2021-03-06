# RUN: llvm-mc -triple s390x-linux-gnu -show-encoding %s | FileCheck %s

#CHECK: llihf	%r0, 0                  # encoding: [0xc0,0x0e,0x00,0x00,0x00,0x00]
#CHECK: llihf	%r0, 4294967295         # encoding: [0xc0,0x0e,0xff,0xff,0xff,0xff]
#CHECK: llihf	%r15, 0                 # encoding: [0xc0,0xfe,0x00,0x00,0x00,0x00]

	llihf	%r0, 0
	llihf	%r0, 0xffffffff
	llihf	%r15, 0
