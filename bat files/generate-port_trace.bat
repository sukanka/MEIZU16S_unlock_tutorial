CHCP 65001
@echo off
echo 本脚本仅能执行到生成 port_trace.txt 步.



rem 关闭自动输出

rem 接收输入

set input=
set /p input=请输入你的9008 COM 端口, 只输入数字: 

rem 输出得到的输入信息

echo 您COM端口是：COM%input%
rem 执行前两步

QSaharaServer.exe -p \\.\COM%input% -s 13:prog_firehose_ddr.elf

echo 请检查是否出现 File transferred successfully 和 Sahara protocol completed
echo 如果是,则已成功,否则失败.失败请重新连接或者换端口后再试.
pause

fh_loader.exe --port=\\.\COM%input% --noprompt

echo 输出完毕,请检查大小, 正确的话,大小在32kB左右.
echo 如果不对,请重新连接或者换端口后再试.

pause
rem pause>null
