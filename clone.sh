#!/bin/bash

# write commands if you want to clone some repos

#Z010D Shit

git clone https://github.com/Asus-MSM8916/android_device_asus_msm8916-common -b lineage 17.1 device/asus/msm8916-common
git clone https://github.com/Asus-MSM8916/android_device_asus_Z010D -b lineage-17.1 device/asus/Z010D
git clone https://github.com/Asus-MSM8916/android_vendor_asus -b lineage-17.1 vendor/asus
https://github.com/Asus-MSM8916/android_kernel_asus_Z010D -b 10.x kernel/asus/Z010D

git clone https://github.com/kdrag0n/aarch64-elf-gcc prebuilts/gcc/linux-x86/aarch64/aarch64-elf --depth=1

# Fixup clang errors of caf hals

export XPATH=$(pwd)
cd $XPATH/hardware/qcom-caf/msm8916/display
curl https://github.com/YaAlex3/android_hardware_qcom_display/commit/81ff90e84f82f95674f4bb0d1a51db2ce123eeef.patch | git am
cd $XPATH/hardware/qcom-caf/msm8916/audio
curl https://github.com/YaAlex3/android_hardware_qcom_audio/commit/82c5cd225e57c21f3475766a5069626b365e66a9.patch | git am
cd $XPATH
