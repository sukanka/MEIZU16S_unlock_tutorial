CHCP 65001
@echo off

echo 请选择一种语言,中文(1)或英文(2)
set LANG=1
set /p LANG= Please chooose a language Chinese (1) or English (2):
if %LANG%==1 (

echo 你选择了中文

echo 本脚本仅能执行到生成 port_trace.txt 步.

set input=
set /p input=请输入你的9008 COM 端口, 只输入数字: 


rem 输出得到的输入信息

echo 您COM端口是：COM%input%
rem 执行前两步

QSaharaServer.exe -p \\.\COM%input% -s 13:prog_firehose_ddr.elf

echo 请检查是否出现 File transferred successfully 和 Sahara protocol completed
echo 如果是,则已成功, 按任意键继续,否则失败.失败请重新连接或者换端口后再试.
pause

fh_loader.exe --port=\\.\COM%input% --noprompt

echo 输出完毕,请检查大小, 正确的话,大小在32kB左右, 按任意键退出
echo 如果不对,请重新连接或者换端口后再试.

pause
rem pause>null
) ELSE (
echo You selected English
echo This script can only generate port_trace.txt

set input=
set /p input= Enter your COM port, NUMBERS ONLY:


rem 输出得到的输入信息

echo Your port is: COM%input%
rem 执行前两步

QSaharaServer.exe -p \\.\COM%input% -s 13:prog_firehose_ddr.elf

echo Check if it shows "File transferred successfully" and "Sahara protocol completed"
echo If so, succeded, else reconnect or change a port and retry.

pause

fh_loader.exe --port=\\.\COM%input% --noprompt

echo "port_trace.txt" has been generated, it should be about 32KB.
echo if so press any key to exit, else please retry.

pause
)

