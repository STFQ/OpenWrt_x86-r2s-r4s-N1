#!/bin/bash

shopt -s extglob

curl -sfL https://raw.githubusercontent.com/x-wrt/x-wrt/master/target/linux/mediatek/patches-5.15/995-0001-hwnat-add-natflow-flow-offload-support.patch -o target/linux/ramips/patches-5.15/995-0001-hwnat-add-natflow-flow-offload-support.patch

svn export --force https://github.com/x-wrt/x-wrt/trunk/package/kernel/mt76 package/kernel/mt76


sed -i 's/DEFAULT_PACKAGES +=/DEFAULT_PACKAGES += luci-app-natflow-users natflow-boot/' target/linux/ramips/Makefile
