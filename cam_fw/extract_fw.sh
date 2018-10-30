if [[ "$1" == "" ]]
then
	echo "$0 firmware.bin"
else
	sha512sum $1
	#Blocks:
	#1cba74305d0491b957f1805c84e9b1cf5674002fc4f0de26905a16fb40303376187f1c35085b7455bff5c4de23cf8faa9479e4f78fd50dbf69947deb27f5d687
	#LOCATION: SIZE:    FILENAME
	#508       1812019  amba_ssp_svc.bin (.gz)
	#1812527   1988127  dsp.bin.gz
	#3800654   143664   rom.bin.gz
	mkdir out/
	dd if=$1 of=out/amba_ssp_svc.bin.gz bs=1 skip=508 count=1812019
	dd if=$1 of=out/dsp.bin.gz bs=1 skip=1812527 count=1988127
	dd if=$1 of=out/rom.bin.gz bs=1 skip=3800654 count=143664
	
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
fi
