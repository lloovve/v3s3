#!/bin/sh

IP=$1	# path to outputs/images directory
EP=$BR2_EXTERNAL_V3S3_PATH

echo "Copying initramfs.cpio.uboot from ${EP}/board/licheepi/initramfs to ${IP}"
cp ${EP}/board/licheepi/initramfs/initramfs.cpio.uboot ${IP}/../images

echo "Renaming '$TARGET_DIR/etc/network/if-pre-up.d/wait_iface' script"
mv $TARGET_DIR/etc/network/if-pre-up.d/wait_iface $TARGET_DIR/etc/network/if-pre-up.d/001-wait_iface
