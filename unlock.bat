CHCP 65001
@echo off
echo 本脚本仅在获取到你的 BL.bin 和 flash.bin 才能执行.
echo 本脚本会清除数据,请先做好备份
echo 你有的话,请将它们放到这个文件所在目录下,如果你没有这两个文件请退出.



rem 关闭自动输出

rem 接收输入

set input=
set /p input=请输入你的9008 COM 端口, 只输入数字: 

rem 输出得到的输入信息

echo 您COM端口是：COM%input%
rem 执行前两步
 
rem step 4
QSaharaServer.exe -p \\.\COM%input% -s 13:prog_firehose_ddr.elf

echo 请检查是否出现 File transferred successfully 和 Sahara protocol completed
echo 如果是,则已成功,否则失败.失败请重新连接或者换端口后再试.
pause
rem step 5
 
fh_loader.exe --port=\\.\COM%input% --noprompt
rem step 7
fh_loader.exe --port=\\.\COM%input% --signeddigests=flash.bin --noprompt --showpercentagecomplete --zlpawarehost=1 --memoryname=ufs --testvipimpact

echo 如果显示SIGNATURE PASSED就继续下一步，如果没有,表示失败
pause
rem step 8
 
fh_loader.exe --port=\\.\COM%input% --sendxml=backup.xml --noprompt --showpercentagecomplete --zlpawarehost=1 --memoryname=ufs --testvipimpact

echo 显示大大的Warning和Done然后执行下一步
pause
rem step 9
 
fh_loader.exe --port=\\.\COM%input% --sendxml=write.xml --noprompt --showpercentagecomplete --zlpawarehost=1 --memoryname=ufs --testvipimpact
rem step 10
fh_loader.exe --port=\\.\COM%input% --reset --noprompt
echo 进入fastboot，尽情享受吧。


pause
rem pause>null
