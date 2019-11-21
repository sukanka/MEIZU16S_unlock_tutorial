# MEIZU 16S 解锁、刷入TWRP教程

[TOC]

## 引言

由于解锁商人价格太贵, 并且是一次性解锁, 因此我之前一直没有解锁, 直到 3 天前, 在某社交网站看到有转发的魅族16系列解锁的帖子,只需要捐赠5美元 (现在是 50CNY )，就可以获得解锁文件， 因此我马上就捐赠了5美元，然后也很快收到了解锁文件，解锁之后就有了这篇教程。



## 前期准备

### Android 工具箱

请前往谷歌开发者下载 [Platform-tools]( https://developer.android.com/studio/releases/platform-tools ), 如已配置请忽略。

### 解锁教程

感谢 @WHALE52 转载的[解锁教程](https://www.coolapk.com/feed/14942258?shareKey=ZGNhNThhZTM5Mzk2NWRkMzYyMDA~&shareUid=453578&shareFrom=com.coolapk.market_9.6.3), 不过他提供的工具包里面的 `prog_firehose_ddr.elf` 文件有误，是 16th 的不是 16S 的， 您可以使用我提供的[压缩包](https://pan.baidu.com/s/1Ar3xfJurnU8oQDfs4kD-KA), **提取码：8ato**，也可以自行提取降级教程中的包的 `prog_firehose_ddr.elf` 文件用于替换 @WHALE52 提供的文件。

**PS**: 目前MEIZU所有机型解锁都是**免费**的，不过这可能会需要 **10-40 天**的等待， 因为等待解锁的人数众多，如果您需要立即解锁，您可以向提供解锁文件的人捐赠**至少5美元**，然后给他发邮件，邮件主题是你的手机型号，正文中包含你的捐赠的截图或交易号，附件提供你的 `trace.txt` 然后他会在**3小时**内将你的文件发给你。

### 刷入TWRP教程

解锁后就可以刷入 TWRP 了。感谢**魅族16S交流群** 提供的**魅族 16s 降级教程** 使用 [@wzsx150](https://weibo.com/u/6033736159) 制作的最新的MEIZU 16S 的 [TWRP](https://pan.baidu.com/s/1As7Qo92pheuwEZTARUMCeQ),  提取码: 2333 

**注意**：第一次进入TWRP可能会触屏无法使用，请准备OTG鼠标！！！

下面提供**两种刷入 TWRP 的方式**， 

* 一是直接刷入，

  手机重启进入 `FASTBOOT` 模式， 连上电脑，打开 `CMD` 或者 `Powershell` 输入（如果你将 Android 工具箱加入了系统路径， 可以在任意地方打开命令行， 如果没有， 请在 `Platform-tools` 的文件夹下打开）

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

* 解锁教程中，尽量保证你的系统版本在11月6日之前，推荐之前的正式版和10月的体验版。
* 已经解锁后请不要再刷回 11月6日以后的 Flyme, 否则必定进入丢失模式，并且之后只要再刷 Flyme 8 就会进入丢失模式，而且输入正确的密码无反应，输入错误的密码会显示密码错误。友情提示：不要有幻想，亲测[ Flyme8内测版食用方法](https://www.coolapk.com/feed/14944888?shareKey=MjEwMTU4ODcyZjJlNWRkNGU3Nzc~&shareUid=512709&shareFrom=com.coolapk.market_9.6.3)无效
* 已经解锁之后，在 `FASTBOOT` 界面连接电脑，打开 `CMD` 或者 `Powershell` 输入（如果你将 Android 工具箱加入了系统路径， 可以在任意地方打开命令行， 如果没有， 请在 `Platform-tools` 的文件夹下打开）

```
fastboot oem lock
```

​		可以重新上锁，并且和未解锁之前没有什么区别，这意味着只要你没用过 Flyme 官方 Root, 就还有保修。并		且在回锁之后， 还可以使用解锁教程再次解锁， 但是回锁后，降级教程疑似无效。

* 刷入官方ROM回锁之后, 重启会在准备中那里等很久, 然后直接进入 `Recovery` 模式，在这里升级最新 Flyme 8, 选择清除数据，也**不能正常启动**！
* 另外, 替换官方固件中的 `firmware-update` 文件也没有效果,能够启动,但是会被锁机.
* 因此, 目前 16S 没有可以回到 `Flyme 8` 的办法!!

## 参考资料

* [ Flyme8内测版食用方法](https://www.coolapk.com/feed/14944888?shareKey=MjEwMTU4ODcyZjJlNWRkNGU3Nzc~&shareUid=512709&shareFrom=com.coolapk.market_9.6.3)
* [**魅族 16s 降级教程**](https://pan.baidu.com/s/1Ar3xfJurnU8oQDfs4kD-KA)
* [魅族16s解锁Bootloader](https://www.coolapk.com/feed/14942258?shareKey=ZGNhNThhZTM5Mzk2NWRkMzYyMDA~&shareUid=453578&shareFrom=com.coolapk.market_9.6.3)



