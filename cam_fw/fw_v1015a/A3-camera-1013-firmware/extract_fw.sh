if [[ "$1" == "" ]]
then
	echo "$0 firmware.bin"
else
	sha512sum $1
	#Blocks:
	#35685938dba73bcc354fb910ba938c9a05ea02a3ce77d883b686509045c6bb39c53b5abd36ca563f591d713168caca7b7c8307e54b2c3002edf358f6936b79e6
	#LOCATION: SIZE:    FILENAME
	#508       4499328  amba_ssp_svc.bin (.gz)
	#1812971   5074944  dsp.bin.gz
	#3800654   2336768   rom.bin.gz
	mkdir out/
	dd if=$1 of=out/amba_ssp_svc.bin.gz bs=1 skip=508 count=4499328 
	dd if=$1 of=out/dsp.bin.gz bs=1 skip=1812971 count=5074944
	dd if=$1 of=out/rom.bin.gz bs=1 skip=3801098 count=2336768
	
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
