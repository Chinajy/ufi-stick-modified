# UFI{001B,001C,003} / SP970

## 硬件参数

| BOM      | UFI001B                    | UFI001C                    | UFI003                   | SP970                  |
| -------- | -------------------------- | -------------------------- | ------------------------ | ---------------------- |
| PCB      | UFI001B_MB_ET              | UFI001C_MB_01              | UFI003_MB_V02            | SP970-B-V3             |
| SoC      | MSM8916                    | MSM8916                    | MSM8916                  | MSM8916                |
| EMCP     | H9TP32A4GDCCPR             | H9TP32A4GDCCPR             | TYC0FH121638RA           | KMFJ20005A             |
| Modem    | WTR4905                    | WTR4905                    | WTR4905                  | ACPM-7081 / WTR1605L   |
| WiFi     | WCN3620                    | WCN3620                    | WCN3620                  | WCN3660                |
| PMIC     | PM8916                     | PM8916                     | PM8916                   | PM8916                 |
| Firmware | UFI001B_MB_ET_EDL.7z       | UFI001C_EDL.7z             | UFI003_MB_V02_EDL.7z     | SP970_V3_EDL.7z        |
| QCN      | [UFI001B.qcn][qcn-ufi001b] | [UFI001C.qcn][qcn-ufi001c] | [UFI003.qcn][qcn-ufi003] | [SP970.qcn][qcn-sp970] |

[qcn-ufi001b]: UFI001B_AL.qcn.zip
[qcn-ufi001c]: UFI001C.qcn.zip
[qcn-ufi003]: UFI003_MB.qcn.zip
[qcn-sp970]: SP970_V3.qcn.zip

## 系统固件

包含 `rawprogram0.xml` 可使用 MiFlash 刷入

包含 **GPT 分区表** 可用于 底层救砖

## QCN 文件

可使用 星海工具 或 Miko 刷入

QCN 只适用于丢失串号后补救 请务必在写入 QCN 后修改 IMEI

## 参考文章

- [SP970 V3 硬件与固件](http://blog.shizuku.ml/shizuku/051911.html)
- [UFI001B_MB_ET 硬件与固件](http://blog.shizuku.ml/shizuku/042422.html)
- [UFI001C_MB_01 硬件与固件](http://blog.shizuku.ml/shizuku/040709.html)
- [UFI003_MB_V02 硬件与固件](http://blog.shizuku.ml/shizuku/045009.html)
