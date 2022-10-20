# UFI{001B,001C,003} / SP970

## 硬件参数

|      | UFI001B              | UFI001C            | UFI003               | SP970                 |
| ---- | -------------------- | ------------------ | -------------------- | --------------------- |
| PCB  | UFI001B_MB_ET        | UFI001C_MB_01      | UFI003_MB_V02        | SP970-B-V3            |
| SoC  | [MSM8916][msm8916]   | [MSM8916][msm8916] | [MSM8916][msm8916]   | [MSM8916][msm8916]    |
| EMCP | H9TP32A4GDCCPR       | H9TP32A4GDCCPR     | TYC0FH121638RA       | KMFJ20005A            |
| RF   | WTR4905              | WTR4905            | WTR4905              | WTR1605L / ACPM-7081  |
| WiFi | [WCN3620][wcn3620]   | [WCN3620][wcn3620] | [WCN3620][wcn3620]   | [WCN3660][wcn3660]    |
| PMIC | [PM8916][pm8916]     | [PM8916][pm8916]   | [PM8916][pm8916]     | [PM8916][pm8916]      |
| Fw   | UFI001B_MB_ET_EDL.7z | UFI001C_EDL.7z     | UFI003_MB_V02_EDL.7z | SP970_V3_EDL.7z       |
| QCN  | [UFI001B_AL][qcn-1b] | [UFI001C][qcn-1c]  | [UFI003_MB][qcn-3]   | [SP970_V3][qcn-sp970] |

[msm8916]: https://wiki.postmarketos.org/wiki/Qualcomm_Snapdragon_410/412_(MSM8916)
[wcn3620]: https://developer.qualcomm.com/qfile/29369/lm80-p0436-33_b_wcn3620_wireless_connectivity_ic_device_spec.pdf
[wcn3660]: https://developer.qualcomm.com/qfile/35297/lm80-p0436-70_b_wcn3680bwcn3660b_devicespecification.pdf
[pm8916]: https://developer.qualcomm.com/qfile/29367/lm80-p0436-35_c_pm8916pm8916_power_management_ics.pdf
[qcn-1b]: UFI001B_AL.qcn.zip
[qcn-1c]: UFI001C.qcn.zip
[qcn-3]: UFI003_MB.qcn.zip
[qcn-sp970]: SP970_V3.qcn.zip

## 系统固件

包含 `rawprogram0.xml` 可使用 MiFlash 刷入

包含 **GPT 分区表** 可用于 底层救砖

## QCN 文件

可使用 星海工具 或 Miko 刷入

QCN 只适用于丢失串号后补救 请务必在写入 QCN 后修改 IMEI

## 参考文章

- [SP970 V3 硬件与固件](https://blog.shizuku.ml/shizuku/051911.html)
- [UFI001B_MB_ET 硬件与固件](https://blog.shizuku.ml/shizuku/042422.html)
- [UFI001C_MB_01 硬件与固件](https://blog.shizuku.ml/shizuku/040709.html)
- [UFI003_MB_V02 硬件与固件](https://blog.shizuku.ml/shizuku/045009.html)
