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
