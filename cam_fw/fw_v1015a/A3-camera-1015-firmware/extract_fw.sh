if [[ "$1" == "" ]]
then
	echo "$0 firmware.bin"
else
	sha512sum $1
	#Blocks:
	#ae0fcb4e0a37a0e9d19a3e82689c2d7bc43df3ef6922c39818641a66ea1a2e57723a194c7cbfec127349ad71b0a443b50afb856c1e1dd171a759401a65cdcb57
	#LOCATION: SIZE:    FILENAME
	#508       4499328  amba_ssp_svc.bin (.gz)
	#1812975   5074944  dsp.bin.gz
	#3801102   2336768   rom.bin.gz
	mkdir out/
	dd if=$1 of=out/amba_ssp_svc.bin.gz bs=1 skip=508 count=4499328 
	dd if=$1 of=out/dsp.bin.gz bs=1 skip=1812975 count=5074944
	dd if=$1 of=out/rom.bin.gz bs=1 skip=3801102 count=2336768
	
	sha512sum out/amba_ssp_svc.bin.gz
	sha512sum out/dsp.bin.gz
	sha512sum out/rom.bin.gz
	
	#extract each file:
	gunzip out/dsp.bin.gz
	gunzip out/rom.bin.gz
	gunzip out/amba_ssp_svc.bin.gz
	
	#Extract YAFFS filesystem:
	dd if=out/amba_ssp_svc.bin of=out/yaffs_fs.data bs=1 skip=4064524 count=434804
	#Extract MySQL base from DSP
	dd if=out/dsp.bin of=out/mysql.data bs=1 skip=304149 count=2958785
	sha512sum out/*
	cat sums.txt
fi
