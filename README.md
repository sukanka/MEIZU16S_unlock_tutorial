# MEIZU 16S 解锁、刷入TWRP教程

[中文](https://github.com/sukanka/MEIZU16S_unlock_tutorial)	[English](https://github.com/sukanka/MEIZU16S_unlock_tutorial/blob/master/README_EN.md) 

[TOC]

**注意**: 本教程理论上也适用于其他魅族型号,如 16th, 16th Plus, 16S Pro 等, 但是本教程提供的`prog_firehose_ddr.elf` 文件是魅族 16S 的, 因此如果您使用其他机型, 您需要去找到对应机型中的线刷包, 提取出相应的 `prog_firehose_ddr.elf` 替换.

**强烈建议您在开始动手之前至少看完本教程!!**

## 引言

由于解锁商人价格太贵, 并且是一次性解锁, 因此我之前一直没有解锁, 直到 3 天前, 在某社交网站看到有转发的魅族16系列解锁的帖子,只需要捐赠5美元 (现在是 50CNY )，就可以获得解锁文件， 因此我马上就捐赠了5美元，然后也很快收到了解锁文件，解锁之后就有了这篇教程。本教程基于 Windows 系统， 如果您使用 Linux 或者 Mac OS X, 您可以按照这个思路找您需要的文件。

### 一些有用的小技巧

很多朋友会遇到这样的问题,手机无法关机,又想要进入 `Recovery` `Fastboot` 或者 9008 模式, 因此这里列上一些技巧. 在无法关机状态下进入

* `Recovery` : 按住电源键和音量上, 重启振动后立即放开电源键, 继续按住音量上
* `Fastboot` : 按住电源键和音量下, 重启振动后立即放开电源键, 继续按住音量下
* 9008 : 连上电脑, 按住电源键和音量上和音量下, 重启振动后立即放开电源键, 继续按住音量上和音量下.
* 在官方 `Recovery` 中按5下音量上, 5下音量下, 会跳出清除数据的选项,这在某些一直重启进入`Recovery` 的时候可能会很有用, 通常这样操作一次之后就能正常启动了.

### 建议与网络文件

建议在解锁前准备好相应机型的救砖包,以免变砖救不回.

现将本篇文章涉及到的网络文件整理如下:

* [**魅族 16s 降级教程**](https://pan.baidu.com/s/1Ar3xfJurnU8oQDfs4kD-KA), **提取码：8ato**
* MEIZU 16S 的 [TWRP](https://pan.baidu.com/s/1As7Qo92pheuwEZTARUMCeQ),  提取码: 2333 
* 16s, 16th, 16th Plus 的百度云[线刷包](https://pan.baidu.com/s/1vaLHIR8GaqaJ1AsqKrTjOQ) 提取码:b5nh. (@最飘得手机)
* 16x 的百度云[线刷包](https://pan.baidu.com/s/1IrEtLLyB-6qlKRw6BEoAmQ), 提取码:uu15 (@Xiaolock)
* 16s, 16s Pro 的天翼云[线刷包](https://cloud.189.cn/t/MvYNVbjyY77f) ,  (访问码:3989)  (@因为我高冷)

## 前期准备

### Android 工具箱

请前往谷歌开发者下载 [Platform-tools]( https://developer.android.com/studio/releases/platform-tools ), 如已配置请忽略。

### 解锁教程

感谢 @WHALE52 转载的[解锁教程](https://www.coolapk.com/feed/14942258?shareKey=ZGNhNThhZTM5Mzk2NWRkMzYyMDA~&shareUid=453578&shareFrom=com.coolapk.market_9.6.3), 不过他提供的工具包里面的 `prog_firehose_ddr.elf` 文件有误，是 16th 的不是 16S 的， 您可以使用我提供的[压缩包](https://pan.baidu.com/s/1Ar3xfJurnU8oQDfs4kD-KA), **提取码：8ato**，也可以自行提取降级教程中线刷包的 `prog_firehose_ddr.elf` 文件用于替换 @WHALE52 提供的文件。 另外 16S Pro 可以直接使用16s 的 `prog_firehose_ddr.elf`文件 (@ilvmoo).

**PS**: 目前MEIZU所有机型解锁都是**免费**的，不过这可能会需要 **10-40 天**的等待， 因为等待解锁的人数众多，如果您需要立即解锁，您可以向提供解锁文件的人捐赠**至少5美元**，然后给他发邮件，邮件主题是**DONATE**，正文中包含你的捐赠的截图或交易号，附件提供你的 `port_trace.txt` 然后他会在**3小时**内将你的文件发给你。

**注:** 现在可以使用 `bat files` 文件夹下的`generate-port_trace.bat` 来生成 `port_trace.txt`, 使用 `unlock.bat` 来解锁.

具体做法: 将他们放到 `MZLOCK` 文件夹下,然后双击`generate-port_trace.bat` 根据提示生成 `port_trace.txt`, 获取到你的 `BL.bin` 和 `unlock.bin` 之后,将这两个文件也放到 `MZLOCK`文件夹下, 再双击 `unlock.bat` 根据提示输入解锁.

现在新增了 `elf files` 文件夹, 里面包含了部分机型的 `prog_firehose_ddr.elf` 文件.其中 16x 的文件来源于 @Xiaolock.

### 刷入TWRP教程

解锁后就可以刷入 TWRP 了。使用 [@wzsx150](https://weibo.com/u/6033736159) 制作的最新的MEIZU 16S 的 [TWRP](https://pan.baidu.com/s/1As7Qo92pheuwEZTARUMCeQ),  提取码: 2333 ,想要获取最新的 TWRP 可以关注作者的微博.

**注意**：第一次进入TWRP可能会触屏无法使用，请准备OTG鼠标！！！

下面提供**两种刷入 TWRP 的方式**， 

* 一是直接刷入，手机重启进入 `FASTBOOT` 模式， 连上电脑，将`bat files` 下的 `1. Start Here.cmd` 复制到 `platform-tools` 文件夹，双击 `1. Start Here.cmd`, 然后输入


```
fastboot flash recovery $YourPath/YourRecovery.img
```

​		其中 `$YourPath/YourRecovery.img` 表示你下载的 TWRP 文件， 可以直接用鼠标拖进去，不用自己输。

​		然后**手动**进入 `Recovery` 模式, 千万别输代码进入,不然会直接进系统.

* 二是通过降级包刷入，将下载的 TWRP 重命名为 ` recovery.img` 放入解压后的救砖包中替换原来的 `recovery.img` 。然后按照救砖教程刷一遍，就有 TWRP 了。

在 TWRP中首先格式化一遍 `Data` 分区， 再重启到 `Recovery` 模式，连接电脑或者 OTG U 盘刷入你需要的包。

教程到此结束。

## 解锁教程和降级教程一些常见问题的解决办法

降级教程参见 **魅族16S交流群** 提供的[**魅族 16s 降级教程**](https://pan.baidu.com/s/1Ar3xfJurnU8oQDfs4kD-KA), **提取码：8ato**

如果出现以下的降级失败情况,请将手机拔下, 连上电源, 然后重启进入 `FASTBOOT` 模式, 再拔下电源, 以 9008 模式连接电脑进行降级即可. 

```
16:46:39: ERROR: function: sahara_rx_data:194 Unable to read packet header. Only read 0 bytes.
16:46:39: ERROR: function: sahara_main:854 Sahara protocol error
16:46:39: ERROR: function: main:265 Uploading  Image using Sahara protocol failed
Download Fail:Sahara Fail:QSaharaServer Fail:Process fail
Finish Download
```



## 结论

16s pro 的flyme 8 解锁后一切正常, 以下关于flyme 的结论大多是关于16s 的

* 解锁教程中，尽量保证你的系统版本在11月6日之前，推荐之前的正式版和10月的体验版。
* 已经解锁后请不要再刷回 11月6日以后的 Flyme, 否则必定进入丢失模式，并且之后只要再刷 Flyme 8 就会进入丢失模式，而且输入正确的密码无反应，输入错误的密码会显示密码错误。友情提示：不要有幻想，亲测[ Flyme8内测版食用方法](https://www.coolapk.com/feed/14944888?shareKey=MjEwMTU4ODcyZjJlNWRkNGU3Nzc~&shareUid=512709&shareFrom=com.coolapk.market_9.6.3)无效
* 已经解锁之后，在 `FASTBOOT` 界面连接电脑，打开 `CMD` 或者 `Powershell` 输入（如果你将 Android 工具箱加入了系统路径， 可以在任意地方打开命令行， 如果没有， 请在 `Platform-tools` 的文件夹下打开）

```
fastboot oem lock
```

​		可以重新上锁，并且和未解锁之前没有什么区别，这意味着只要你没用过 Flyme 官方 Root, 就还有保修。并		且在回锁之后， 还可以使用解锁教程再次解锁，不需要重新获取解锁文件。

* 刷入官方ROM回锁之后, 重启会在准备中那里等很久, 然后直接进入 `Recovery` 模式，在这里按5下音量上,5下音量下, 选择清除数据能够成功开机, **不会被锁机**.
* 另外, 替换官方固件中的 `firmware-update` 文件也没有效果,能够启动,但是会被锁机.
* 回锁之后,在官方Recovery 使用5次音量上,5次音量下的方式清除一次数据能够回到Flyme 8,并且一切正常
* 关于格式化 `System`, 经测试, 格式化之后无法进入 `Recovery`, 但是可以进入 `Fastboot`.(@彩虹糖)
* 降级之后不要立即刷TWRP, 会无法触屏, 应先用5次音量上、5次音量下清除一次数据，进入系统之后再刷twrp,此时触屏无问题
* 16s 可以刷入Flyme 8 后 删除`/system_root/system/app/MzPhoneLocationService` 文件夹和  `/system_root/system/priv-app/SystemUI` , 之后能够进入系统,但是无法使用状态栏、mback，多任务以及其他部分功能。

## 文件说明

| 文件或目录                                       | 说明                                                 |
| ------------------------------------------------ | ---------------------------------------------------- |
| README.md                                        | 本文件                                               |
| 1. Start Here.cmd                                | 一个在刷入 TWRP 阶段使用的脚本                       |
| LICENSE                                          | MIT 许可证                                           |
| recovery-TWRP-3.3.1-1106-MEIZU16S-CN-wzsx150.img | 魅族 16S 的 TWRP                                     |
| MZLOCK                                           | 魅族 16S 的解锁工具                                  |
| platform-tools                                   | 谷歌的 Adb/Fastboot 工具箱                           |
| example-unlock-files                             | 热心网友提供的自己的解锁文件, 不通用, 供学习交流使用 |
| bat files                                        | 存放bat 脚本的文件夹                                 |
| elf files                                        | 存放各个机型的`prog_firehose_ddr.elf` 文件           |

## 参考资料

* [ Flyme8内测版食用方法](https://www.coolapk.com/feed/14944888?shareKey=MjEwMTU4ODcyZjJlNWRkNGU3Nzc~&shareUid=512709&shareFrom=com.coolapk.market_9.6.3)
* [**魅族 16s 降级教程**](https://pan.baidu.com/s/1Ar3xfJurnU8oQDfs4kD-KA)
* [魅族16s解锁Bootloader](https://www.coolapk.com/feed/14942258?shareKey=ZGNhNThhZTM5Mzk2NWRkMzYyMDA~&shareUid=453578&shareFrom=com.coolapk.market_9.6.3)

## 写在最后

欢迎各位解锁的小伙伴分享你为了上 `Flyme 8` 所做的尝试或是其他在解锁过程中发现的有用的经验, 请提 Issue, 我会总结出来放到结论里面. 也欢迎各位小伙伴分享你自己的解锁文件.

下面是云要饭环节：如果您喜欢我所作的工作, 可以考虑捐赠我, 点击[这里](https://qr.alipay.com/tsx01402sza3o66naw0o9c6)通过支付宝捐赠我，您的任何捐赠都会使我的情况变得更好.