# 编译 Debian

```bash
# Cloning
gh repo clone OpenStick/linux --depth 1
# Configuration
export CROSS_COMPILE=aarch64-linux-gnu-
export ARCH=arm64
make msm8916_defconfig
make menuconfig
# Build
make
# Build Kernel image and headers
fakeroot make-kpkg \
    --initrd \
    --cross-compile aarch64-linux-gnu-
    --arch arm64
    kernel_image
    kernel_headers
# 在主目录下创建一个back文件夹
# 将 arch/arm64/boot/Image.gz 文件复制到刚刚创建的文件夹
# 将 arch/arm64/boot/dts/qcom/目录对应设备的dtb文件复制到刚刚创建的文件夹
# 例如需要编译UFI001C设备 就将msm8916-handsome-openstick-ufi001c.dtb 取出放到文件夹
# 可以使用 ls msm8916-handsome-openstick*.dtb 命令查看dtb名称
# 下载底包
wget https://github.com/OpenStick/OpenStick/releases/download/v1/debian.zip
unzip debian.zip
# 解包 rootfs.img
simg2img rootfs.img root.img
# 挂载
mount root.img /mnt
debian/mount.sh
chroot /mnt
# 修改 rootfs
dpkg -l | grep -E 'linux-(headers|image)' | awk '{print $2}' | xargs dpkg -P
dpkg -i *.deb
debian/allow-root-ssh.sh
# 卸载
debian/mount.sh
# 封装 rootfs.img
img2simg root.img rootfs.img
```

```bash
# Packing Image
cat Image.gz msm8916-handsome-openstick-ufi001c.dtb > ufi001c-kernel-dtb
mv initrd.img-* initrd.img
mkbootimg \
    --base 0x80000000 \
    --kernel_offset 0x00080000 \
    --ramdisk_offset 0x02000000 \
    --tags_offset 0x01e00000 \
    --pagesize 2048 \
    --second_offset 0x00f00000 \
    --cmdline 'earlycon root=PARTUUID=a7ab80e8-e9d1-e8cd-f157-93f69b1d141e console=ttyMSM0,115200 no_framebuffer=true rw' \
    --ramdisk initrd.img \
    --kernel ufi001c-kernel-dtb \
    -o ufi001c-boot.img
```

## 参考

- <https://github.com/HandsomeMod>
- <https://github.com/OpenStick>
- <https://blog.shizuku.ml/shizuku/065919.html>
