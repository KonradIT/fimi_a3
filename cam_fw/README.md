## Notes:

amba_ssp_svc.bin is the Ambarella camera chip FW.

Rollback is possible.

```
c:\amba_mtp.txt
c:\firmware.bin
c:\sd_shmoo.txt

C:\version.txt
C:\update.txt
C:\rollback.txt
C:\firmware.bin
C:\default.txt
C:\cal.txt
C:\cal_out.txt
C:\uCode\orccode.bin
C:\uCode\orcme.bin
C:\uCode\default_binary.bin
C:\data_0.bin
```

Resolutions:

```
1440P50
1440P25
1080P50
1080P25
720P50
720P25
1440P60
1440P30
1080P60
1080P30
720P60
720P30
8M_3264x2448
4M_2016x1512
```

```
t usb init_device msc/mtp

USB device test command:
  status          : Print USB Device status
  regdump         : Dump Device Registers
  usbd_vbus [0/1] : suspend/resume device vbus detection task
  init_device [class]: Init USB Device
          [class] : msc, mtp, cdc, cdc_multi, uvc, simple, stream, msc_cdc, uav, uavc.
  d_owner [o] [u] : change USB device IRQ OWNER. 0:RTOS, 1:Linux
              [o] : OWNER. 0:RTOS, 1:Linux
              [u] : UPDATE.
  mtpd_debug      : [0/1] disable/enable MTP device protocol debug messages
  mtpd_add_event	 : Inform Host a MTP event through a interrupt endpoint
  mscd_debug      : [0/1] disable/enable MDC device protocol debug messages
  mscd_add_lun [SlotId] [Removable] [Wp]
```

### Blocks...

#### 1cba74305d0491b957f1805c84e9b1cf5674002fc4f0de26905a16fb40303376187f1c35085b7455bff5c4de23cf8faa9479e4f78fd50dbf69947deb27f5d687
	
| LOCATION: | SIZE:    | FILENAME |
|-----------|----------|----------|
| 508       | 1812019  | amba_ssp_svc.bin (.gz) |
| 1812527   | 1988127  | dsp.bin.gz |
| 3800654   | 143664   | rom.bin.gz |

#### 35685938dba73bcc354fb910ba938c9a05ea02a3ce77d883b686509045c6bb39c53b5abd36ca563f591d713168caca7b7c8307e54b2c3002edf358f6936b79e6

| LOCATION: | SIZE:    | FILENAME |
|-----------|----------|----------|
| 508       | 4499328  | amba_ssp_svc.bin (.gz) |
| 1812971   | 5074944  | dsp.bin.gz |
| 3800654   | 2336768  | rom.bin.gz |

#### ae0fcb4e0a37a0e9d19a3e82689c2d7bc43df3ef6922c39818641a66ea1a2e57723a194c7cbfec127349ad71b0a443b50afb856c1e1dd171a759401a65cdcb57

| LOCATION: | SIZE:    | FILENAME |
|-----------|----------|----------|
| 508       | 4499328  | amba_ssp_svc.bin (.gz) |
| 1812975   | 5074944  | dsp.bin.gz |
| 3801102   | 2336768  | rom.bin.gz |

### Latest sums


	1cd8cb08d36868a0639277833b6c891cfcf535d6ba7b3db5944f69365fb228849f6cb1acaa07c44e3d6b1841d11d59fbc2e9a00e4d2dd91c4a4269648fcd4ade  out/amba_ssp_svc.bin
	f63ecd97d1a528eb030f506549004a157fc2a2c9821c41b07f9f2c7e9017952231e5f5dd532c50c97bd96b08ba54acb4d25c73ae5419dd9949e3665cfeb4a004  out/dsp.bin
	5f376ea0f58e456742e3f8e05943cc6e76f1a739acb385172ca100888d3b7572bb6f0294ef55949c1cfdd73a7f39b10d79bd8e5758ace54223607143f33d658d  out/mysql.data
	5fc66c8f2cd2b02f78a198656cab7ddd2c01b663ed6dd870751628a20e5b7a16c707dfc69713d307888811994b9c550e1c4473016355a064a17586f738c9cdb7  out/rom.bin
	a9cbbbd4f496621c580f93e26ff3f43250e47b81a41757affef74332960a1f2453202b57d25dab7da0c7bc6f252559d11bdebf72afb17401ffbf63d9985ced1a  out/yaffs_fs.data

