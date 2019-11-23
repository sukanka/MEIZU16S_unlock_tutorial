# Tutorial on unlocking MEIZU 16 Series

[中文](https://github.com/sukanka/MEIZU16S_unlock_tutorial)	[English](https://github.com/sukanka/MEIZU16S_unlock_tutorial/blob/master/README_EN.md) 

Not sure about what to say. I will display the core steps below:
**Notice**: This tutorail is for MEIZU 16 Series including 16th, 16th Plus, 16s, 16s Pro, 16x and maybe 16T as well as 16xs.

## Some useful skills
* In any condition, you can hold **Volume up (down)** and **Power**, and release **Power** after a shock while still holding **Volume up (down)** to enter **Recovery (Fastboot) mode**
* In any condition, you can connect your phone to computer, then  hold **Volume up, Volume down and Power**, and release **Power key** after a shock, while still holding **Volume up and Volume down** to enter **9008 mode**
* In stock MEIZU Recovery mode, you can click **Volume up** for 5 times, then **Volume down** for 5 times to erase your data fully. This may be helpful, when you can not boot into system.
* when unlocked, you can boot your device to **Fastboot**, and use `Fastboot oem lock` to relock your device.

## Some helpful files

* **Downgrade package**: You can use this to save your phone from becoming bricks or downgrade your rom to previous version. 
  * For 16th, 16th Plus, and 16s [Available on BaiduNetDisk](https://pan.baidu.com/s/1vaLHIR8GaqaJ1AsqKrTjOQ), password:b5nh. (thanks to @最飘得手机). 
  * For 16x, also [available on BaiduNetDisk](https://pan.baidu.com/s/1IrEtLLyB-6qlKRw6BEoAmQ), password:uu15 (thanks to@Xiaolock) 
  * Not available for other models now.

* **TWRP files**: Available for 16th, 16th Plus, 16s. I will post it on github.

## Guide to unlock your phone

original post: see it on [4pda](https://4pda.ru/forum/index.php?showtopic=961552&st=960#entry90949224 )

Here are the steps: 

* Install QualcommHS-USB9008 driver

* poweroff your phone, and hold **all Volume keys** and connect your phone to computer.

* remember the 9008 port number.

* past `generate port_trace.bat` into `MZLOCK` and click on it, follow the instructions.

* send the generated `port_trace.txt` file to [fastrpl@yahoo.com](mailto:fastrpl@yahoo.com). 

  The email should be titled like MEIZU 16s, and wait for his reply, 

  he will send you your `BL.bin` and `flash.bin`

* copy the `BL.bin` and `flash.bin` into `MZLOCK`, and then click on `unlock.bat` and follow the instructions.

* go to stock recovery and click **Volume up** for 5 times, then **Volume down** for 5 times to erase your data fully, or the touch screen won't work after unlock.

## Guide to downgrade your phone

Tutorial not available in English here, only downgrade packages available. I will appreciate it if someone wants to provide it in English.

## Guide to flash TWRP

You can find TWRP for MEIZU 16 Series at  https://weibo.com/u/6033736159 , Chines and English are supported in these TWRP.

After you unlocked your phone, you can reboot into `Fastboot` and copy the `1. Start Here.cmd` into `platform-tools` ，click on `1. Start Here.cmd` and input 

```
fastboot flash recovery $YourPath/YourRecovery.img
```

where `$YourPath/YourRecovery.img` is your TWRP recovery, you can drag it into `CMD` window.

Then please reboot into recovery **by hand**, not commands!

This guide ends here.

## Some conclusions

* Any version of the system can be unlocked. But if you unlock your phone in Flyme 8, it will enter lost mode, and password of MEIZU account is required, but even correct password does not work. Thus, you can currently only use Flyme 7 after unlock.
* you can choose to relock your phone by the magic command

```
Fastboot oem lock
```

and you can unlock your phone later as long as you keep your `BL.bin` and `flash.bin`

* when relocked(locked), you can use Flyme 8 as before after a fully clean of data in stock recovery.

## Attached files

| file or directory                                | explanation                                                  |
| ------------------------------------------------ | ------------------------------------------------------------ |
| README_EN.md                                     | This file                                                    |
| 1. Start Here.cmd                                | a script used to flash TWRP                                  |
| LICENSE                                          | LICENSE                                                      |
| recovery-TWRP-3.3.1-1106-MEIZU16S-CN-wzsx150.img | TWRP for MEIZU 16s                                           |
| MZLOCK                                           | Unlock toolkit                                               |
| platform-tools                                   | Adb/Fastboot toolkit from google                             |
| example-unlock-files                             | unlock files provided by others                              |
| bat files                                        | directory containing all needed scripts.                     |
| elf files                                        | directory that saves`prog_firehose_ddr.elf` for different model of MEIZU 16 Series. |

## Final words

If you'd like to share your unlock files, you can propose issue, or send me an email, and you are welcome to share any useful finding during your unlocking.

If you like my work, you can donate me via Alipay, [This is my link](https://qr.alipay.com/tsx01402sza3o66naw0o9c6), any donation will make me better!