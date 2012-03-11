#!/bin/sh

# Copyright (C) 2012 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

VENDOR=lge
DEVICE=p930

mkdir -p ../../../vendor/$VENDOR/$DEVICE

(cat << EOF) | sed s/__DEVICE__/$DEVICE/g | sed s/__VENDOR__/$VENDOR/g > ../../../vendor/$VENDOR/$DEVICE/$DEVICE-vendor.mk
# Copyright (C) 2012 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This file is generated by device/__VENDOR__/__DEVICE__/setup-makefiles.sh

# Live wallpaper packages
PRODUCT_PACKAGES := \\
    LiveWallpapers \\
    LiveWallpapersPicker \\
    MagicSmokeWallpapers \\
    VisualizationWallpapers \\
    librs_jni

# Publish that we support the live wallpaper feature.
PRODUCT_COPY_FILES := \\
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml

\$(call inherit-product, vendor/__VENDOR__/__DEVICE__/__DEVICE__-vendor-blobs.mk)
EOF

(cat << EOF) | sed s/__DEVICE__/$DEVICE/g | sed s/__VENDOR__/$VENDOR/g > ../../../vendor/$VENDOR/$DEVICE/$DEVICE-vendor-blobs.mk
# Copyright (C) 2012 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This file is generated by device/__VENDOR__/__DEVICE__/setup-makefiles.sh

# HAL
PRODUCT_COPY_FILES += \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/hw/lights.msm8660.so:system/lib/hw/lights.msm8660.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/hw/sensors.msm8660.so:system/lib/hw/sensors.msm8660.so
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/hw/gps.default.so:system/lib/hw/gps.default.so

# OMX FW
PRODUCT_COPY_FILES += \\
    vendor/__VENDOR__/__DEVICE__/proprietary/etc/firmware/vidc_1080p.fw:system/etc/firmware/vidc_1080p.fw

# BT FW
PRODUCT_COPY_FILES += \\
    vendor/__VENDOR__/__DEVICE__/proprietary/etc/firmware/BCM4330B1_002.001.003.0243.0308.hcd:system/etc/firmware/BCM4330B1_002.001.003.0243.0308.hcd

# EGL
PRODUCT_COPY_FILES += \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/egl/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/egl/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/egl/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/egl/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/egl/eglsubAndroid.so:system/lib/egl/eglsubAndroid.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/etc/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \\
    vendor/__VENDOR__/__DEVICE__/proprietary/etc/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw \\
    vendor/__VENDOR__/__DEVICE__/proprietary/etc/firmware/leia_pfp_470.fw:system/etc/firmware/leia_pfp_470.fw \\
    vendor/__VENDOR__/__DEVICE__/proprietary/etc/firmware/leia_pm4_470.fw:system/etc/firmware/leia_pm4_470.fw \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libC2D2.so:system/lib/libC2D2.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libOpenVG.so:system/lib/libOpenVG.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libgsl.so:system/lib/libgsl.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libsc-a2xx.so:system/lib/libsc-a2xx.so

# RIL, modem, Q6
PRODUCT_COPY_FILES += \\
    vendor/__VENDOR__/__DEVICE__/proprietary/bin/rmt_storage:system/bin/rmt_storage \\
    vendor/__VENDOR__/__DEVICE__/proprietary/bin/qmuxd:system/bin/qmuxd \\
    vendor/__VENDOR__/__DEVICE__/proprietary/bin/qmiproxy:system/bin/qmiproxy \\
    vendor/__VENDOR__/__DEVICE__/proprietary/bin/netmgrd:system/bin/netmgrd \\
    vendor/__VENDOR__/__DEVICE__/proprietary/bin/qrngd:system/bin/qrngd \\
    vendor/__VENDOR__/__DEVICE__/proprietary/bin/rild:system/bin/rild \\
    vendor/__VENDOR__/__DEVICE__/proprietary/bin/qcks:system/bin/qcks \\
    vendor/__VENDOR__/__DEVICE__/proprietary/bin/ks:system/bin/ks \\
    vendor/__VENDOR__/__DEVICE__/proprietary/bin/time_daemon:system/bin/time_daemon \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libril-qc-qmi-1.so:system/lib/libril-qc-qmi-1.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libril-qcril-hook-oem.so:system/lib/libril-qcril-hook-oem.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libqmi.so:system/lib/libqmi.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libril.so:system/lib/libril.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libqmi.so:system/lib/libqmi.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libdiag.so:system/lib/libdiag.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libdsutils.so:system/lib/libdsutils.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libqmiservices.so:system/lib/libqmiservices.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libidl.so:system/lib/libidl.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libdsi_netctrl.so:system/lib/libdsi_netctrl.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libqdp.so:system/lib/libqdp.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libnetmgr.so:system/lib/libnetmgr.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libtime_genoff.so:system/lib/libtime_genoff.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/liboncrpc.so:system/lib/liboncrpc.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libdsm.so:system/lib/libdsm.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libqueue.so:system/lib/libqueue.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libtime_remote_atom.so:system/lib/libtime_remote_atom.so

# CPU management
PRODUCT_COPY_FILES += \\
    vendor/__VENDOR__/__DEVICE__/proprietary/bin/thermald:system/bin/thermald \\
    vendor/__VENDOR__/__DEVICE__/proprietary/bin/mpdecision:system/bin/mpdecision \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libthermal_mitigation_fusion.so:system/lib/libthermal_mitigation_fusion.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libthermal_mitigation.so:system/lib/libthermal_mitigation.so

## WiFi
PRODUCT_COPY_FILES += \\
    vendor/__VENDOR__/__DEVICE__/proprietary/etc/wl/rtecdc.bin:system/etc/wl/rtecdc.bin \\
    vendor/__VENDOR__/__DEVICE__/proprietary/etc/wl/rtecdc-apsta.bin:system/etc/wl/rtecdc-apsta.bin

## Audio
PRODUCT_COPY_FILES += \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libaudioalsa.so:system/lib/libaudioalsa.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libaudio.so:system/lib/libaudio.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libaudio.so:obj/lib/libaudio.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libaudcal.so:system/lib/libaudcal.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libacdbmapper.so:system/lib/libacdbmapper.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libacdbloader.so:system/lib/libacdbloader.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/liba2dp.so:system/lib/liba2dp.so

## Camera
PRODUCT_COPY_FILES += \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libmmjps.so:system/lib/libmmjps.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libmmjpeg.so:system/lib/libmmjpeg.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libmmipl.so:system/lib/libmmipl.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/liboemcamera.so:system/lib/liboemcamera.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libmmmpod.so:system/lib/libmmmpod.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libmmmpo.so:system/lib/libmmmpo.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libmmstereo.so:system/lib/libmmstereo.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/lib_LG_fastaf_v2.0.so:system/lib/lib_LG_fastaf_v2.0.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libgemini.so:system/lib/libgemini.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libchromatix_imx105_preview.so:system/lib/libchromatix_imx105_preview.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/hw/camera.msm8660.so:system/lib/hw/camera.msm8660.so

## OMX Video Encoder - temporary until we can build CAF's
PRODUCT_COPY_FILES += \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lib/libOmxVenc.so:system/lib/libOmxVenc.so

EOF

(cat << EOF) | sed s/__DEVICE__/$DEVICE/g | sed s/__VENDOR__/$VENDOR/g > ../../../vendor/$VENDOR/$DEVICE/BoardConfigVendor.mk
# Copyright (C) 2012 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This file is generated by device/__VENDOR__/__DEVICE__/setup-makefiles.sh

USE_CAMERA_STUB := false
EOF
