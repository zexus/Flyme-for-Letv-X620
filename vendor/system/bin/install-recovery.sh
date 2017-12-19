#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/mtk-msdc.0/11230000.msdc0/by-name/recovery:14805888:153c702526759c4cbca4ad0f2f295034cd86c49a; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/mtk-msdc.0/11230000.msdc0/by-name/boot:10584960:d7eca287db24c3aee2b96c8a3ded3ebeb92d2da9 EMMC:/dev/block/platform/mtk-msdc.0/11230000.msdc0/by-name/recovery 153c702526759c4cbca4ad0f2f295034cd86c49a 14805888 d7eca287db24c3aee2b96c8a3ded3ebeb92d2da9:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
