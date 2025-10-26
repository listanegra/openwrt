DEVICE_VARS += TPLINK_BOARD_ID

define Device/tplink_deco-m5-v3
	$(call Device/FitzImage)
	DEVICE_VENDOR := TP-Link
	SOC := qcom-ipq4019
	IMAGES += factory.bin
	IMAGE/factory.bin := append-rootfs | tplink-safeloader factory
	IMAGE/sysupgrade.bin := append-rootfs | tplink-safeloader sysupgrade | append-metadata
	DEVICE_MODEL := Deco-M5
	DEVICE_VARIANT := v3
	TPLINK_BOARD_ID := DECO-M5
	KERNEL_SIZE := 4096k
	IMAGE_SIZE := 16640k
endef
TARGET_DEVICES += tplink_deco-m5-v3