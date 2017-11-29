	.text
	.file	"crc_32.LL"
	.hidden	updateCRC32
	.globl	updateCRC32
	.p2align	2
	.type	updateCRC32,@function
updateCRC32:                            # @updateCRC32
# BB#0:                                 # %entry
	l.sw	-4(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.andi	r5, r4, 255
	l.xor	r3, r5, r3
	l.slli	r3, r3, 2
	l.movhi	r5, hi(crc_32_tab)
	l.ori	r5, r5, lo(crc_32_tab)
	l.add	r3, r3, r5
	l.lwz	r3, 0(r3)
	l.srli	r4, r4, 8
	l.xor	r11, r3, r4
	l.addi	r1, r2, 0
	l.lwz	r2, -4(r1)
	l.jr	r9
	l.nop	0                       # in delay slot
.Lfunc_end0:
	.size	updateCRC32, .Lfunc_end0-updateCRC32

	.hidden	crc32file
	.globl	crc32file
	.p2align	2
	.type	crc32file,@function
crc32file:                              # @crc32file
# BB#0:                                 # %entry
	l.sw	-4(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.movhi	r6, 0
	l.sw	0(r4), r6
	l.addi	r5, r0, -1
	l.movhi	r7, hi(crc_32_tab)
	l.ori	r7, r7, lo(crc_32_tab)
.LBB1_1:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	l.xor	r8, r5, r6
	l.andi	r8, r8, 255
	l.slli	r8, r8, 2
	l.add	r8, r8, r7
	l.lwz	r8, 0(r8)
	l.srli	r5, r5, 8
	l.xor	r5, r8, r5
	l.addi	r6, r6, 1
	l.sfnei	r6, 2216
	l.bf	.LBB1_1
	l.nop	0                       # in delay slot
# BB#2:                                 # %while.end
	l.addi	r6, r0, 2216
	l.sw	0(r4), r6
	l.xori	r4, r5, -1
	l.sw	0(r3), r4
	l.movhi	r11, 0
	l.addi	r1, r2, 0
	l.lwz	r2, -4(r1)
	l.jr	r9
	l.nop	0                       # in delay slot
.Lfunc_end1:
	.size	crc32file, .Lfunc_end1-crc32file

	.hidden	crc32buf
	.globl	crc32buf
	.p2align	2
	.type	crc32buf,@function
crc32buf:                               # @crc32buf
# BB#0:                                 # %entry
	l.sw	-4(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.movhi	r11, 0
	l.sfeqi	r4, 0
	l.bf	.LBB2_4
	l.nop	0                       # in delay slot
# BB#1:                                 # %for.body.preheader
	l.addi	r5, r0, -1
	l.movhi	r6, hi(crc_32_tab)
	l.ori	r6, r6, lo(crc_32_tab)
.LBB2_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	l.andi	r7, r5, 255
	l.lbz	r8, 0(r3)
	l.xor	r7, r8, r7
	l.slli	r7, r7, 2
	l.add	r7, r7, r6
	l.lwz	r7, 0(r7)
	l.srli	r5, r5, 8
	l.xor	r5, r7, r5
	l.addi	r3, r3, 1
	l.addi	r4, r4, -1
	l.sfnei	r4, 0
	l.bf	.LBB2_2
	l.nop	0                       # in delay slot
# BB#3:                                 # %for.end.loopexit
	l.xori	r11, r5, -1
.LBB2_4:                                # %for.end
	l.addi	r1, r2, 0
	l.lwz	r2, -4(r1)
	l.jr	r9
	l.nop	0                       # in delay slot
.Lfunc_end2:
	.size	crc32buf, .Lfunc_end2-crc32buf

	.hidden	main
	.globl	main
	.p2align	2
	.type	main,@function
main:                                   # @main
# BB#0:                                 # %entry
l.nop 100                      ### start making possible fault injection candidates
	l.sw	-4(r1), r9
	l.sw	-8(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -16
	l.addi	r3, r0, -1
	l.movhi	r4, 0
	l.movhi	r5, hi(crc_32_tab)
	l.ori	r5, r5, lo(crc_32_tab)
.LBB3_1:                                # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	l.xor	r6, r3, r4
	l.andi	r6, r6, 255
	l.slli	r6, r6, 2
	l.add	r6, r6, r5
	l.lwz	r6, 0(r6)
	l.srli	r3, r3, 8
	l.xor	r3, r6, r3
	l.addi	r4, r4, 1
	l.sfnei	r4, 22160
	l.bf	.LBB3_1
	l.nop	0                       # in delay slot
# BB#2:                                 # %crc32file.exit
	l.addi	r4, r0, 2216
	l.sw	4(r1), r4
	l.xori	r3, r3, -1
	l.sw	0(r1), r3
	l.movhi	r3, hi(.L.str)
	l.ori	r3, r3, lo(.L.str)
l.nop 200                      ### stop making possible fault injection candidates
	l.jal	printf
	l.nop	0                       # in delay slot
	l.movhi	r11, 0
	l.addi	r1, r2, 0
	l.lwz	r2, -8(r1)
	l.lwz	r9, -4(r1)
	l.jr	r9
	l.nop	0                       # in delay slot
.Lfunc_end3:
	.size	main, .Lfunc_end3-main

	.type	crc_32_tab,@object      # @crc_32_tab
	.section	.rodata,"a",@progbits
	.p2align	2
crc_32_tab:
	.long	0                       # 0x0
	.long	1996959894              # 0x77073096
	.long	3993919788              # 0xee0e612c
	.long	2567524794              # 0x990951ba
	.long	124634137               # 0x76dc419
	.long	1886057615              # 0x706af48f
	.long	3915621685              # 0xe963a535
	.long	2657392035              # 0x9e6495a3
	.long	249268274               # 0xedb8832
	.long	2044508324              # 0x79dcb8a4
	.long	3772115230              # 0xe0d5e91e
	.long	2547177864              # 0x97d2d988
	.long	162941995               # 0x9b64c2b
	.long	2125561021              # 0x7eb17cbd
	.long	3887607047              # 0xe7b82d07
	.long	2428444049              # 0x90bf1d91
	.long	498536548               # 0x1db71064
	.long	1789927666              # 0x6ab020f2
	.long	4089016648              # 0xf3b97148
	.long	2227061214              # 0x84be41de
	.long	450548861               # 0x1adad47d
	.long	1843258603              # 0x6ddde4eb
	.long	4107580753              # 0xf4d4b551
	.long	2211677639              # 0x83d385c7
	.long	325883990               # 0x136c9856
	.long	1684777152              # 0x646ba8c0
	.long	4251122042              # 0xfd62f97a
	.long	2321926636              # 0x8a65c9ec
	.long	335633487               # 0x14015c4f
	.long	1661365465              # 0x63066cd9
	.long	4195302755              # 0xfa0f3d63
	.long	2366115317              # 0x8d080df5
	.long	997073096               # 0x3b6e20c8
	.long	1281953886              # 0x4c69105e
	.long	3579855332              # 0xd56041e4
	.long	2724688242              # 0xa2677172
	.long	1006888145              # 0x3c03e4d1
	.long	1258607687              # 0x4b04d447
	.long	3524101629              # 0xd20d85fd
	.long	2768942443              # 0xa50ab56b
	.long	901097722               # 0x35b5a8fa
	.long	1119000684              # 0x42b2986c
	.long	3686517206              # 0xdbbbc9d6
	.long	2898065728              # 0xacbcf940
	.long	853044451               # 0x32d86ce3
	.long	1172266101              # 0x45df5c75
	.long	3705015759              # 0xdcd60dcf
	.long	2882616665              # 0xabd13d59
	.long	651767980               # 0x26d930ac
	.long	1373503546              # 0x51de003a
	.long	3369554304              # 0xc8d75180
	.long	3218104598              # 0xbfd06116
	.long	565507253               # 0x21b4f4b5
	.long	1454621731              # 0x56b3c423
	.long	3485111705              # 0xcfba9599
	.long	3099436303              # 0xb8bda50f
	.long	671266974               # 0x2802b89e
	.long	1594198024              # 0x5f058808
	.long	3322730930              # 0xc60cd9b2
	.long	2970347812              # 0xb10be924
	.long	795835527               # 0x2f6f7c87
	.long	1483230225              # 0x58684c11
	.long	3244367275              # 0xc1611dab
	.long	3060149565              # 0xb6662d3d
	.long	1994146192              # 0x76dc4190
	.long	31158534                # 0x1db7106
	.long	2563907772              # 0x98d220bc
	.long	4023717930              # 0xefd5102a
	.long	1907459465              # 0x71b18589
	.long	112637215               # 0x6b6b51f
	.long	2680153253              # 0x9fbfe4a5
	.long	3904427059              # 0xe8b8d433
	.long	2013776290              # 0x7807c9a2
	.long	251722036               # 0xf00f934
	.long	2517215374              # 0x9609a88e
	.long	3775830040              # 0xe10e9818
	.long	2137656763              # 0x7f6a0dbb
	.long	141376813               # 0x86d3d2d
	.long	2439277719              # 0x91646c97
	.long	3865271297              # 0xe6635c01
	.long	1802195444              # 0x6b6b51f4
	.long	476864866               # 0x1c6c6162
	.long	2238001368              # 0x856530d8
	.long	4066508878              # 0xf262004e
	.long	1812370925              # 0x6c0695ed
	.long	453092731               # 0x1b01a57b
	.long	2181625025              # 0x8208f4c1
	.long	4111451223              # 0xf50fc457
	.long	1706088902              # 0x65b0d9c6
	.long	314042704               # 0x12b7e950
	.long	2344532202              # 0x8bbeb8ea
	.long	4240017532              # 0xfcb9887c
	.long	1658658271              # 0x62dd1ddf
	.long	366619977               # 0x15da2d49
	.long	2362670323              # 0x8cd37cf3
	.long	4224994405              # 0xfbd44c65
	.long	1303535960              # 0x4db26158
	.long	984961486               # 0x3ab551ce
	.long	2747007092              # 0xa3bc0074
	.long	3569037538              # 0xd4bb30e2
	.long	1256170817              # 0x4adfa541
	.long	1037604311              # 0x3dd895d7
	.long	2765210733              # 0xa4d1c46d
	.long	3554079995              # 0xd3d6f4fb
	.long	1131014506              # 0x4369e96a
	.long	879679996               # 0x346ed9fc
	.long	2909243462              # 0xad678846
	.long	3663771856              # 0xda60b8d0
	.long	1141124467              # 0x44042d73
	.long	855842277               # 0x33031de5
	.long	2852801631              # 0xaa0a4c5f
	.long	3708648649              # 0xdd0d7cc9
	.long	1342533948              # 0x5005713c
	.long	654459306               # 0x270241aa
	.long	3188396048              # 0xbe0b1010
	.long	3373015174              # 0xc90c2086
	.long	1466479909              # 0x5768b525
	.long	544179635               # 0x206f85b3
	.long	3110523913              # 0xb966d409
	.long	3462522015              # 0xce61e49f
	.long	1591671054              # 0x5edef90e
	.long	702138776               # 0x29d9c998
	.long	2966460450              # 0xb0d09822
	.long	3352799412              # 0xc7d7a8b4
	.long	1504918807              # 0x59b33d17
	.long	783551873               # 0x2eb40d81
	.long	3082640443              # 0xb7bd5c3b
	.long	3233442989              # 0xc0ba6cad
	.long	3988292384              # 0xedb88320
	.long	2596254646              # 0x9abfb3b6
	.long	62317068                # 0x3b6e20c
	.long	1957810842              # 0x74b1d29a
	.long	3939845945              # 0xead54739
	.long	2647816111              # 0x9dd277af
	.long	81470997                # 0x4db2615
	.long	1943803523              # 0x73dc1683
	.long	3814918930              # 0xe3630b12
	.long	2489596804              # 0x94643b84
	.long	225274430               # 0xd6d6a3e
	.long	2053790376              # 0x7a6a5aa8
	.long	3826175755              # 0xe40ecf0b
	.long	2466906013              # 0x9309ff9d
	.long	167816743               # 0xa00ae27
	.long	2097651377              # 0x7d079eb1
	.long	4027552580              # 0xf00f9344
	.long	2265490386              # 0x8708a3d2
	.long	503444072               # 0x1e01f268
	.long	1762050814              # 0x6906c2fe
	.long	4150417245              # 0xf762575d
	.long	2154129355              # 0x806567cb
	.long	426522225               # 0x196c3671
	.long	1852507879              # 0x6e6b06e7
	.long	4275313526              # 0xfed41b76
	.long	2312317920              # 0x89d32be0
	.long	282753626               # 0x10da7a5a
	.long	1742555852              # 0x67dd4acc
	.long	4189708143              # 0xf9b9df6f
	.long	2394877945              # 0x8ebeeff9
	.long	397917763               # 0x17b7be43
	.long	1622183637              # 0x60b08ed5
	.long	3604390888              # 0xd6d6a3e8
	.long	2714866558              # 0xa1d1937e
	.long	953729732               # 0x38d8c2c4
	.long	1340076626              # 0x4fdff252
	.long	3518719985              # 0xd1bb67f1
	.long	2797360999              # 0xa6bc5767
	.long	1068828381              # 0x3fb506dd
	.long	1219638859              # 0x48b2364b
	.long	3624741850              # 0xd80d2bda
	.long	2936675148              # 0xaf0a1b4c
	.long	906185462               # 0x36034af6
	.long	1090812512              # 0x41047a60
	.long	3747672003              # 0xdf60efc3
	.long	2825379669              # 0xa867df55
	.long	829329135               # 0x316e8eef
	.long	1181335161              # 0x4669be79
	.long	3412177804              # 0xcb61b38c
	.long	3160834842              # 0xbc66831a
	.long	628085408               # 0x256fd2a0
	.long	1382605366              # 0x5268e236
	.long	3423369109              # 0xcc0c7795
	.long	3138078467              # 0xbb0b4703
	.long	570562233               # 0x220216b9
	.long	1426400815              # 0x5505262f
	.long	3317316542              # 0xc5ba3bbe
	.long	2998733608              # 0xb2bd0b28
	.long	733239954               # 0x2bb45a92
	.long	1555261956              # 0x5cb36a04
	.long	3268935591              # 0xc2d7ffa7
	.long	3050360625              # 0xb5d0cf31
	.long	752459403               # 0x2cd99e8b
	.long	1541320221              # 0x5bdeae1d
	.long	2607071920              # 0x9b64c2b0
	.long	3965973030              # 0xec63f226
	.long	1969922972              # 0x756aa39c
	.long	40735498                # 0x26d930a
	.long	2617837225              # 0x9c0906a9
	.long	3943577151              # 0xeb0e363f
	.long	1913087877              # 0x72076785
	.long	83908371                # 0x5005713
	.long	2512341634              # 0x95bf4a82
	.long	3803740692              # 0xe2b87a14
	.long	2075208622              # 0x7bb12bae
	.long	213261112               # 0xcb61b38
	.long	2463272603              # 0x92d28e9b
	.long	3855990285              # 0xe5d5be0d
	.long	2094854071              # 0x7cdcefb7
	.long	198958881               # 0xbdbdf21
	.long	2262029012              # 0x86d3d2d4
	.long	4057260610              # 0xf1d4e242
	.long	1759359992              # 0x68ddb3f8
	.long	534414190               # 0x1fda836e
	.long	2176718541              # 0x81be16cd
	.long	4139329115              # 0xf6b9265b
	.long	1873836001              # 0x6fb077e1
	.long	414664567               # 0x18b74777
	.long	2282248934              # 0x88085ae6
	.long	4279200368              # 0xff0f6a70
	.long	1711684554              # 0x66063bca
	.long	285281116               # 0x11010b5c
	.long	2405801727              # 0x8f659eff
	.long	4167216745              # 0xf862ae69
	.long	1634467795              # 0x616bffd3
	.long	376229701               # 0x166ccf45
	.long	2685067896              # 0xa00ae278
	.long	3608007406              # 0xd70dd2ee
	.long	1308918612              # 0x4e048354
	.long	956543938               # 0x3903b3c2
	.long	2808555105              # 0xa7672661
	.long	3495958263              # 0xd06016f7
	.long	1231636301              # 0x4969474d
	.long	1047427035              # 0x3e6e77db
	.long	2932959818              # 0xaed16a4a
	.long	3654703836              # 0xd9d65adc
	.long	1088359270              # 0x40df0b66
	.long	936918000               # 0x37d83bf0
	.long	2847714899              # 0xa9bcae53
	.long	3736837829              # 0xdebb9ec5
	.long	1202900863              # 0x47b2cf7f
	.long	817233897               # 0x30b5ffe9
	.long	3183342108              # 0xbdbdf21c
	.long	3401237130              # 0xcabac28a
	.long	1404277552              # 0x53b39330
	.long	615818150               # 0x24b4a3a6
	.long	3134207493              # 0xbad03605
	.long	3453421203              # 0xcdd70693
	.long	1423857449              # 0x54de5729
	.long	601450431               # 0x23d967bf
	.long	3009837614              # 0xb3667a2e
	.long	3294710456              # 0xc4614ab8
	.long	1567103746              # 0x5d681b02
	.long	711928724               # 0x2a6f2b94
	.long	3020668471              # 0xb40bbe37
	.long	3272380065              # 0xc30c8ea1
	.long	1510334235              # 0x5a05df1b
	.long	755167117               # 0x2d02ef8d
	.size	crc_32_tab, 1024

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%08lX %7ld \n"
	.size	.L.str, 13


	.ident	"clang version 3.9.1 (git://github.com/openrisc/clang-or1k.git a6cc86e01f03c312de170d69c422eb589a47a6d4) (git://github.com/openrisc/llvm-or1k.git 50cd32d7a5a029bf6c68c1b86c1c3cf6e0f3ee46)"
	.section	".note.GNU-stack","",@progbits
