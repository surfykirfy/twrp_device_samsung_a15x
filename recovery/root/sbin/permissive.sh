# 1 "vendor/mediatek/proprietary/hardware/fstab/mt6835/fstab.in.mt6835"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 356 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "vendor/mediatek/proprietary/hardware/fstab/mt6835/fstab.in.mt6835" 2
# 132 "vendor/mediatek/proprietary/hardware/fstab/mt6835/fstab.in.mt6835"
system	/system	erofs	ro	wait,,avb=vbmeta_system,logical,first_stage_mount,avb_keys=/avb/q-gsi.avbpubkey:/avb/r-gsi.avbpubkey:/avb/s-gsi.avbpubkey
system	/system	f2fs	ro	wait,,avb=vbmeta_system,logical,first_stage_mount,avb_keys=/avb/q-gsi.avbpubkey:/avb/r-gsi.avbpubkey:/avb/s-gsi.avbpubkey
system	/system	ext4	ro	wait,,avb=vbmeta_system,logical,first_stage_mount,avb_keys=/avb/q-gsi.avbpubkey:/avb/r-gsi.avbpubkey:/avb/s-gsi.avbpubkey
system_ext	/system_ext	erofs	ro	wait,,avb=vbmeta_system,logical,first_stage_mount,avb_keys=/avb/q-gsi.avbpubkey:/avb/r-gsi.avbpubkey:/avb/s-gsi.avbpubkey
system_ext	/system_ext	erofs	ro	wait,,avb=vbmeta_system,logical,first_stage_mount,avb_keys=/avb/q-gsi.avbpubkey:/avb/r-gsi.avbpubkey:/avb/s-gsi.avbpubkey

vendor	/vendor	erofs	ro	wait,,avb,logical,first_stage_mount
vendor	/vendor	erofs	ro	wait,,avb,logical,first_stage_mount


product	/product	erofs	ro	wait,,avb,logical,first_stage_mount
product	/product	erofs	ro	wait,,avb,logical,first_stage_mount


odm	/odm	erofs	ro	wait,,avb,logical,first_stage_mount
odm	/odm	erofs	ro	wait,,avb,logical,first_stage_mount


vendor_dlkm	/vendor_dlkm	erofs	ro	wait,,avb,logical,first_stage_mount
vendor_dlkm	/vendor_dlkm	erofs	ro	wait,,avb,logical,first_stage_mount






system_dlkm	/system_dlkm	erofs	ro	wait,,avb,logical,first_stage_mount
system_dlkm	/system_dlkm	f2fs	ro	wait,,avb,logical,first_stage_mount
system_dlkm	/system_dlkm	ext4	ro	wait,,avb,logical,first_stage_mount


/dev/block/by-name/metadata	/metadata	ext4	noatime,nosuid,nodev,noauto_da_alloc,discard,journal_checksum,data=ordered,errors=panic,sync	wait,check,formattable,first_stage_mount

/dev/block/by-name/userdata	/data	f2fs	noatime,nosuid,nodev,discard,usrquota,grpquota,fsync_mode=nobarrier,reserve_root=32768,resgid=5678,whint_mode=fs-based,inlinecrypt	wait,check,,quota,latemount,,reservedsize=128M,checkpoint=fs,fileencryption=aes-256-xts:aes-256-cts:v2+inlinecrypt_optimized,keydirectory=/metadata/vold/metadata_encryption,fsverity,fscompress

/dev/block/by-name/cache	/cache	ext4	noatime,nosuid,nodev,noauto_da_alloc,discard,journal_checksum,data=ordered,errors=panic	wait,check,formattable

#/dev/block/by-name/protect1	/mnt/vendor/protect_f	ext4	noatime,nosuid,nodev,noauto_da_alloc,discard,journal_checksum,data=ordered,errors=panic	wait,check,formattable
#/dev/block/by-name/protect2	/mnt/vendor/protect_s	ext4	noatime,nosuid,nodev,noauto_da_alloc,discard,journal_checksum,data=ordered,errors=panic	wait,check,formattable
#/dev/block/by-name/nvdata	/mnt/vendor/nvdata	ext4	noatime,nosuid,nodev,noauto_da_alloc,discard,journal_checksum,data=ordered,errors=panic	wait,check,formattable
#/dev/block/by-name/nvcfg	/mnt/vendor/nvcfg	ext4	noatime,nosuid,nodev,noauto_da_alloc,discard,journal_checksum,data=ordered,errors=panic	wait,check,formattable


/dev/block/by-name/prism /prism ext4 ro,barrier=1 nofail,avb,first_stage_mount
/dev/block/by-name/optics /optics ext4 ro,barrier=1 nofail,avb,first_stage_mount





#/dev/block/by-name/efs	/mnt/vendor/efs	ext4	noatime,nosuid,nodev,noauto_da_alloc,discard,journal_checksum,data=ordered,errors=panic	wait,check,formattable




/devices/platform/soc/11240000.mmc* auto auto defaults voldmanaged=sdcard:auto

/devices/platform/usb_xhci* auto vfat defaults voldmanaged=usb:auto
/devices/platform/soc/11201000.usb0/11200000.xhci* auto vfat defaults voldmanaged=usb:auto

/dev/block/by-name/frp /persistent emmc defaults defaults

/dev/block/by-name/nvram /nvram emmc defaults defaults
/dev/block/by-name/proinfo /proinfo emmc defaults defaults
/dev/block/by-name/lk1 /lk1 emmc defaults defaults
/dev/block/by-name/bootloader2 /bootloader2 emmc defaults defaults
/dev/block/by-name/para /para emmc defaults defaults
/dev/block/by-name/misc	/misc	emmc	defaults	defaults,first_stage_mount
/dev/block/by-name/init_boot /init_boot emmc defaults first_stage_mount,nofail,


/dev/block/by-name/recovery /recovery emmc defaults first_stage_mount,nofail,

/dev/block/by-name/boot /boot emmc defaults first_stage_mount,nofail,





/dev/block/by-name/vbmeta_vendor /vbmeta_vendor emmc defaults first_stage_mount,nofail,
/dev/block/by-name/vbmeta_system /vbmeta_system emmc defaults first_stage_mount,nofail,,avb=vbmeta

/dev/block/by-name/logo /logo emmc defaults defaults
/dev/block/by-name/expdb /expdb emmc defaults defaults
/dev/block/by-name/seccfg /seccfg emmc defaults defaults

/dev/block/by-name/tee1 /tee1 emmc defaults defaults
/dev/block/by-name/tee2 /tee2 emmc defaults defaults


/dev/block/by-name/tzar /tzar emmc defaults defaults


/dev/block/by-name/scp1 /scp1 emmc defaults defaults
/dev/block/by-name/scp2 /scp2 emmc defaults defaults


/dev/block/by-name/sspm1 /sspm1 emmc defaults defaults
/dev/block/by-name/sspm2 /sspm2 emmc defaults defaults


/dev/block/by-name/dpm1 /dpm1 emmc defaults defaults
/dev/block/by-name/dpm2 /dpm2 emmc defaults defaults

/dev/block/by-name/mcupm1 /mcupm1 emmc defaults defaults
/dev/block/by-name/mcupm2 /mcupm2 emmc defaults defaults



/dev/block/by-name/md1img /md1img emmc defaults defaults
/dev/block/by-name/md1dsp /md1dsp emmc defaults defaults
/dev/block/by-name/md1arm7 /md1arm7 emmc defaults defaults
/dev/block/by-name/md3img /md3img emmc defaults defaults





/dev/block/by-name/gz1 /gz1 emmc defaults defaults
/dev/block/by-name/gz2 /gz2 emmc defaults defaults
/dev/block/by-name/ccu /ccu emmc defaults defaults
/dev/block/by-name/vcp /vcp emmc defaults defaults
/dev/block/by-name/gpueb /gpueb emmc defaults defaults
/dev/block/by-name/mcf_ota /mcf_ota emmc defaults defaults
/dev/block/by-name/vendor_boot /vendor_boot emmc defaults first_stage_mount,nofail,
/dev/block/by-name/mvpu_algo1 /mvpu_algo1 emmc defaults defaults
/dev/block/by-name/mvpu_algo2 /mvpu_algo2 emmc defaults defaults
/dev/block/by-name/apusys1 /apusys1 emmc defaults defaults
/dev/block/by-name/apusys2 /apusys2 emmc defaults defaults

/dev/block/by-name/spmfw /spmfw emmc defaults defaults







/dev/block/by-name/pi_img /pi_img emmc defaults defaults
/dev/block/by-name/boot_para /boot_para emmc defaults defaults
/dev/block/by-name/odmdtbo /odmdtbo emmc defaults defaults
/dev/block/by-name/dtbo /dtbo emmc defaults defaults
/dev/block/by-name/connsys_wifi /connsys_wifi emmc defaults defaults
/dev/block/by-name/connsys_bt /connsys_bt emmc defaults defaults

/dev/block/by-name/otp /otp emmc defaults defaults


/dev/block/by-name/vbmeta /vbmeta emmc defaults defaults


/dev/block/by-name/uh /uh emmc defaults defaults
