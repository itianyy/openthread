/* This file is generated by nds_ldsag (version (2018-07-19) ). */
ENTRY(_start)
SECTIONS
{
	PROVIDE (__executable_start = 0x00000000);
	NDS_SAG_LMA_HEAD = 0x00000000 ;
	. = 0x80000000;
	__flash_start = .;
	.bootloader .	: AT(NDS_SAG_LMA_HEAD)	{ KEEP(*(.bootloader )) }
	NDS_SAG_LMA_LDSECTION = ALIGN (LOADADDR(.bootloader) + SIZEOF (.bootloader) + 0, 8);
	. = 0x0007FF00;
	.loader .	: AT(NDS_SAG_LMA_LDSECTION)	{ KEEP(*(.loader )) }
	__loader_lmastart =  LOADADDR (.loader);
	__loader_start = ADDR(.loader);
	__loader_lmaend =  LOADADDR (.loader) + SIZEOF (.loader);
	NDS_SAG_LMA_MEM = ALIGN (LOADADDR(.loader) + SIZEOF (.loader) + 0, 128);
	. = 0x00000000;
	.nds_init .	: AT(ALIGN(NDS_SAG_LMA_MEM, ALIGNOF(.nds_init)))	{ KEEP(*(.nds_init )) } = 0x0100
	__text_lmastart =  LOADADDR (.nds_init);
	__text_start = ADDR(.nds_init);
	.interp 	: AT(ALIGN(LOADADDR (.nds_init) + SIZEOF (.nds_init), ALIGNOF(.interp)))
		{ *(.interp ) }
	.hash 	: AT(ALIGN(LOADADDR (.interp) + SIZEOF (.interp), ALIGNOF(.hash)))
		{ *(.hash ) }
	.dynsym 	: AT(ALIGN(LOADADDR (.hash) + SIZEOF (.hash), ALIGNOF(.dynsym)))
		{ *(.dynsym ) }
	.dynstr 	: AT(ALIGN(LOADADDR (.dynsym) + SIZEOF (.dynsym), ALIGNOF(.dynstr)))
		{ *(.dynstr ) }
	.gnu.version 	: AT(ALIGN(LOADADDR (.dynstr) + SIZEOF (.dynstr), ALIGNOF(.gnu.version)))
		{ *(.gnu.version ) }
	.gnu.version_d 	: AT(ALIGN(LOADADDR (.gnu.version) + SIZEOF (.gnu.version), ALIGNOF(.gnu.version_d)))
		{ *(.gnu.version_d ) }
	.gnu.version_r 	: AT(ALIGN(LOADADDR (.gnu.version_d) + SIZEOF (.gnu.version_d), ALIGNOF(.gnu.version_r)))
		{ *(.gnu.version_r ) }
	.rela.init 	: AT(ALIGN(LOADADDR (.gnu.version_r) + SIZEOF (.gnu.version_r), ALIGNOF(.rela.init)))
		{ *(.rela.init ) }
	.rela.text 	: AT(ALIGN(LOADADDR (.rela.init) + SIZEOF (.rela.init), ALIGNOF(.rela.text)))
		{ *(.rela.text .rela.text.* .rela.gnu.linkonce.t.* ) }
	.rela.fini 	: AT(ALIGN(LOADADDR (.rela.text) + SIZEOF (.rela.text), ALIGNOF(.rela.fini)))
		{ *(.rela.fini ) }
	.rela.rodata 	: AT(ALIGN(LOADADDR (.rela.fini) + SIZEOF (.rela.fini), ALIGNOF(.rela.rodata)))
		{ *(.rela.rodata .rela.rodata.* .rela.gnu.linkonce.r.* ) }
	.rela.data.rel.ro 	: AT(ALIGN(LOADADDR (.rela.rodata) + SIZEOF (.rela.rodata), ALIGNOF(.rela.data.rel.ro)))
		{ *(.rel.data.rel.ro* ) }
	.rela.data 	: AT(ALIGN(LOADADDR (.rela.data.rel.ro) + SIZEOF (.rela.data.rel.ro), ALIGNOF(.rela.data)))
		{ *(.rela.data .rela.data.* .rela.gnu.linkonce.d.* ) }
	.rela.tdata 	: AT(ALIGN(LOADADDR (.rela.data) + SIZEOF (.rela.data), ALIGNOF(.rela.tdata)))
		{ *(.rela.tdata .rela.tdata.* .rela.gnu.linkonce.td.* ) }
	.rela.tbss 	: AT(ALIGN(LOADADDR (.rela.tdata) + SIZEOF (.rela.tdata), ALIGNOF(.rela.tbss)))
		{ *(.rela.tbss .rela.tbss.* .rela.gnu.linkonce.tb.* ) }
	.rela.ctors 	: AT(ALIGN(LOADADDR (.rela.tbss) + SIZEOF (.rela.tbss), ALIGNOF(.rela.ctors)))
		{ *(.rela.ctors ) }
	.rela.dtors 	: AT(ALIGN(LOADADDR (.rela.ctors) + SIZEOF (.rela.ctors), ALIGNOF(.rela.dtors)))
		{ *(.rela.dtors ) }
	.rela.dyn 	: AT(ALIGN(LOADADDR (.rela.dtors) + SIZEOF (.rela.dtors), ALIGNOF(.rela.dyn)))
		{ *(rela.dyn ) *(.rela__libc_subfreeres ) *(.rela__libc_atexit ) *(.rela__libc_thread_subfreeres ) *(.rela.init_array ) *(.rela.fini_array ) }
	.rela.got 	: AT(ALIGN(LOADADDR (.rela.dyn) + SIZEOF (.rela.dyn), ALIGNOF(.rela.got)))
		{ *(.rela.got ) }
	.rela.sdata 	: AT(ALIGN(LOADADDR (.rela.got) + SIZEOF (.rela.got), ALIGNOF(.rela.sdata)))
		{ *(.rela.sdata .rela.sdata.* .rela.gnu.linkonce.s.* ) }
	.rela.sbss 	: AT(ALIGN(LOADADDR (.rela.sdata) + SIZEOF (.rela.sdata), ALIGNOF(.rela.sbss)))
		{ *(.rela.sbss .rela.sbss.* .rela.gnu.linkonce.sb.* ) }
	.rela.sdata2 	: AT(ALIGN(LOADADDR (.rela.sbss) + SIZEOF (.rela.sbss), ALIGNOF(.rela.sdata2)))
		{ *(.rela.sdata2 .rela.sdata2.* .rela.gnu.linkonce.s2.* ) }
	.rela.sbss2 	: AT(ALIGN(LOADADDR (.rela.sdata2) + SIZEOF (.rela.sdata2), ALIGNOF(.rela.sbss2)))
		{ *(.rela.sbss2 .rela.sbss2.* .rela.gnu.linkonce.sb2.* ) }
	.rela.bss 	: AT(ALIGN(LOADADDR (.rela.sbss2) + SIZEOF (.rela.sbss2), ALIGNOF(.rela.bss)))
		{ *(.rela.bss .rela.bss.* .rela.gnu.linkonce.b.* ) }
	.rela.plt 	: AT(ALIGN(LOADADDR (.rela.bss) + SIZEOF (.rela.bss), ALIGNOF(.rela.plt)))
		{ *(.rela.plt ) }
	.init 	: AT(ALIGN(LOADADDR (.rela.plt) + SIZEOF (.rela.plt), ALIGNOF(.init)))
		{ KEEP(*(.init )) }
	.plt 	: AT(ALIGN(LOADADDR (.init) + SIZEOF (.init), ALIGNOF(.plt)))
		{ *(.plt ) }
	.text 	: AT(ALIGN(LOADADDR (.plt) + SIZEOF (.plt), ALIGNOF(.text)))
		{ *(.text .stub .text.* .gnu.linkonce.t.* ) KEEP(*(.text.*personality* )) *(.gnu.warning ) . = ALIGN(4); } = 0x0100
	.fini 	: AT(ALIGN(LOADADDR (.text) + SIZEOF (.text), ALIGNOF(.fini)))
		{ KEEP(*(.fini )) }
	.exec.itable 	: AT(ALIGN(LOADADDR (.fini) + SIZEOF (.fini), ALIGNOF(.exec.itable)))
		{ *(.exec.itable ) }
	PROVIDE (__etext = .);
	PROVIDE (_etext = .);
	PROVIDE (etext = .);
	.rodata 	: AT(ALIGN(LOADADDR (.exec.itable) + SIZEOF (.exec.itable), ALIGNOF(.rodata)))
		{ *(.rodata .rodata.* .gnu.linkonce.r.* ) }
	.rodata1 	: AT(ALIGN(LOADADDR (.rodata) + SIZEOF (.rodata), ALIGNOF(.rodata1)))
		{ *(.rodata1 ) }
	.sdata2 	: AT(ALIGN(LOADADDR (.rodata1) + SIZEOF (.rodata1), ALIGNOF(.sdata2)))
		{ *(.sdata2 .sdata2.* .gnu.linkonce.s2.* ) }
	.sbss2 	: AT(ALIGN(LOADADDR (.sdata2) + SIZEOF (.sdata2), ALIGNOF(.sbss2)))
		{ *(.sbss2 .sbss2.* .gnu.linkonce.sb2.* ) }
	.eh_frame_hdr 	: AT(ALIGN(LOADADDR (.sbss2) + SIZEOF (.sbss2), ALIGNOF(.eh_frame_hdr)))
		{ *(.eh_frame_hdr ) }
	. = ALIGN(0x20);
	.eh_frame 	: AT(ALIGN(LOADADDR (.eh_frame_hdr) + SIZEOF (.eh_frame_hdr), 32))
		{ KEEP(*(.eh_frame )) }
	.gcc_except_table 	: AT(ALIGN(LOADADDR (.eh_frame) + SIZEOF (.eh_frame), ALIGNOF(.gcc_except_table)))
		{ KEEP(*(.gcc_except_table )) *(.gcc_except_table.* ) }
	.tdata 	: AT(ALIGN(LOADADDR (.gcc_except_table) + SIZEOF (.gcc_except_table), ALIGNOF(.tdata)))
		{ *(.tdata .tdata.* .gnu.linkonce.td.* ) }
	. = ALIGN(8);
	PROVIDE (__preinit_array_start = .);
	.preinit_array 	: AT(ALIGN(ALIGN(LOADADDR (.tdata) + SIZEOF (.tdata), ALIGNOF(.preinit_array)), 8))
		{ KEEP(*(.preinit_array )) }
	PROVIDE (__preinit_array_end = .);
	PROVIDE (__init_array_start = .);
	.init_array 	: AT(ALIGN(LOADADDR (.preinit_array) + SIZEOF (.preinit_array), ALIGNOF(.init_array)))
		{ KEEP(*(SORT_BY_INIT_PRIORITY(.init_array.* ))) KEEP(*(.init_array )) }
	PROVIDE (__init_array_end = .);
	PROVIDE (__fini_array_start = .);
	.fini_array 	: AT(ALIGN(LOADADDR (.init_array) + SIZEOF (.init_array), ALIGNOF(.fini_array)))
		{ KEEP(*(SORT_BY_INIT_PRIORITY(.fini_array.* ))) KEEP(*(.fini_array )) }
	PROVIDE (__fini_array_end = .);
	.ctors 	: AT(ALIGN(LOADADDR (.fini_array) + SIZEOF (.fini_array), ALIGNOF(.ctors)))
		{ KEEP(*crtbegin*.o(.ctors)) KEEP(*(EXCLUDE_FILE (*crtend*.o) .ctors)) KEEP(*(SORT(.ctors.* ))) KEEP(*(.ctors )) }
	.dtors 	: AT(ALIGN(LOADADDR (.ctors) + SIZEOF (.ctors), ALIGNOF(.dtors)))
		{ KEEP(*crtbegin*.o(.dtors)) KEEP(*(EXCLUDE_FILE (*crtend*.o) .dtors)) KEEP(*(SORT(.dtors.* ))) KEEP(*(.dtors )) }
	.jcr 	: AT(ALIGN(LOADADDR (.dtors) + SIZEOF (.dtors), ALIGNOF(.jcr)))
		{ KEEP(*(.jcr )) }
	.data.rel.ro 	: AT(ALIGN(LOADADDR (.jcr) + SIZEOF (.jcr), ALIGNOF(.data.rel.ro)))
		{ *(.data.rel.ro.local ) *(.data.rel.ro* ) }
	.dynamic 	: AT(ALIGN(LOADADDR (.data.rel.ro) + SIZEOF (.data.rel.ro), ALIGNOF(.dynamic)))
		{ *(.dynamic ) }
	. = ALIGN(8);
	.got 	: AT(ALIGN(ALIGN(LOADADDR (.dynamic) + SIZEOF (.dynamic), ALIGNOF(.got)), 8))
		{ *(.got.plt ) *(.got ) }
	.data 	: AT(ALIGN(LOADADDR (.got) + SIZEOF (.got), ALIGNOF(.data)))
		{ *(.data .data.* .gnu.linkonce.d.* ) KEEP(*(.gnu.linkonce.d.*personality* )) SORT(CONSTRUCTORS) . = ALIGN(8); }
	.data1 	: AT(ALIGN(LOADADDR (.data) + SIZEOF (.data), ALIGNOF(.data1)))
		{ *(.data1 ) . = ALIGN(8); }
	. = ALIGN(8);
	PROVIDE (__global_pointer$ = . + 0x800);
	.sdata 	: AT(ALIGN(ALIGN(LOADADDR (.data1) + SIZEOF (.data1), ALIGNOF(.sdata)), 8))
		{ *(.srodata.cst16 ) *(.srodata.cst8 ) *(.srodata.cst4 ) *(.srodata.cst2 ) *(.srodata .srodata.* ) *(.sdata .sdata.* .gnu.linkonce.s.* ) }
	.sdata_d 	: AT(ALIGN(LOADADDR (.sdata) + SIZEOF (.sdata), ALIGNOF(.sdata_d)))
		{ *(.sdata_d .sdata_d.* ) }
	.sdata_w 	: AT(ALIGN(LOADADDR (.sdata_d) + SIZEOF (.sdata_d), ALIGNOF(.sdata_w)))
		{ *(.sdata_w .sdata_w.* ) }
	.sdata_h 	: AT(ALIGN(LOADADDR (.sdata_w) + SIZEOF (.sdata_w), ALIGNOF(.sdata_h)))
		{ *(.sdata_h .sdata_h.* ) }
	.sdata_b 	: AT(ALIGN(LOADADDR (.sdata_h) + SIZEOF (.sdata_h), ALIGNOF(.sdata_b)))
		{ *(.sdata_b .sdata_b.* ) }
	.sdata_f 	: AT(ALIGN(LOADADDR (.sdata_b) + SIZEOF (.sdata_b), ALIGNOF(.sdata_f)))
		{ *(.sdata_f .sdata_f.* ) }
	. = ALIGN(8);
	_edata = .;
	PROVIDE (edata = .);
	__bss_start = .;
	PROVIDE (__sbss_start = .);
	PROVIDE (___sbss_start = .);
	.tbss 	(NOLOAD)	: { *(.tbss .tbss.* .gnu.linkonce.tb.* ) *(.tcommon ) }
	.sbss 	(NOLOAD)	: { *(.dynsbss ) *(.sbss .sbss.* .gnu.linkonce.sb.* ) *(.scommon .scommon.* ) }
	.sbss_f 	(NOLOAD)	: { *(.sbss_f .sbss_f.* ) *(.scommon_f .scommon_f.* ) }
	.sbss_b 	(NOLOAD)	: { *(.sbss_b .sbss_b.* ) *(.scommon_b .scommon_b.* ) . = ALIGN(2); }
	.sbss_h 	(NOLOAD)	: { *(.sbss_h .sbss_h.* ) *(.scommon_h .scommon_h.* ) . = ALIGN(4); }
	.sbss_w 	(NOLOAD)	: { *(.sbss_w .sbss_w.* ) *(.scommon_w .scommon_w.* ) *(.dynsbss ) *(.scommon ) . = ALIGN(8); }
	.sbss_d 	(NOLOAD)	: { *(.sbss_d .sbss_d.* ) *(.scommon_d .scommon_d.* ) }
	.bss 	(NOLOAD)	: { *(.dynbss ) *(.bss .bss.* .gnu.linkonce.b.* ) *(COMMON ) . = ALIGN(8); }
	PROVIDE (__sbss_end = .);
	PROVIDE (___sbss_end = .);
	. = ALIGN(8);
	_end = .;
	PROVIDE (end = .);
	PROVIDE (_stack = 0x08000000);
	.stab	0 : { *(.stab) }
	.stabstr	0 : { *(.stabstr) }
	.stab.excl	0 : { *(.stab.excl) }
	.stab.exclstr	0 : { *(.stab.exclstr) }
	.stab.index	0 : { *(.stab.index) }
	.stab.indexstr	0 : { *(.stab.indexstr) }
	.comment	0 : { *(.comment) }
	.debug	0 : { *(.debug) }
	.line	0 : { *(.line) }
	.debug_srcinfo	0 : { *(.debug_srcinfo) }
	.debug_sfnames	0 : { *(.debug_sfnames) }
	.debug_aranges	0 : { *(.debug_aranges) }
	.debug_pubnames	0 : { *(.debug_pubnames) }
	.debug_info	0 : { *(.debug_info .gnu.linkonce.wi.*) }
	.debug_abbrev	0 : { *(.debug_abbrev) }
	.debug_line	0 : { *(.debug_line) }
	.debug_frame	0 : { *(.debug_frame) }
	.debug_str	0 : { *(.debug_str) }
	.debug_loc	0 : { *(.debug_loc) }
	.debug_macinfo	0 : { *(.debug_macinfo) }
	.debug_weaknames	0 : { *(.debug_weaknames) }
	.debug_funcnames	0 : { *(.debug_funcnames) }
	.debug_typenames	0 : { *(.debug_typenames) }
	.debug_varnames	0 : { *(.debug_varnames) }
}
