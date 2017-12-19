#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 15798272 d42a186f6d5b9f106342eba02c25f68d6b4a5351 9787392 4af5c63f3b56d1d39414556556659334a04c8cfa
fi
if ! applypatch -c EMMC:/dev/block/platform/mtk-msdc.0/11230000.msdc0/by-name/recovery:15798272:d42a186f6d5b9f106342eba02c25f68d6b4a5351; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/mtk-msdc.0/11230000.msdc0/by-name/boot:9787392:4af5c63f3b56d1d39414556556659334a04c8cfa EMMC:/dev/block/platform/mtk-msdc.0/11230000.msdc0/by-name/recovery d42a186f6d5b9f106342eba02c25f68d6b4a5351 15798272 4af5c63f3b56d1d39414556556659334a04c8cfa:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
