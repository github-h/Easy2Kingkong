@echo off&PUSHD %~DP0 &TITLE Easy2Kingkong

>NUL 2>&1 REG.exe query "HKU\S-1-5-19" || (
    ECHO SET UAC = CreateObject^("Shell.Application"^) > "%TEMP%\Getadmin.vbs"
    ECHO UAC.ShellExecute "%~f0", "%1", "", "runas", 1 >> "%TEMP%\Getadmin.vbs"
    "%TEMP%\Getadmin.vbs"
    DEL /f /q "%TEMP%\Getadmin.vbs" 2>NUL
    Exit /b
)

echo -----------------------------------------------------------------------------------------
echo 本脚本由付导的录播组制作  当前版本为 V1.7 （20200220）
echo.
echo 请勿二改 大量传播 本脚本只解决当前的DNS污染问题
echo.
echo 该脚本失效可以在 GitHub 上提交 Issues
echo.
echo 最新脚本将在群动态、UP视频简介和Github同步推送
echo.
echo.
echo 凡是提示拒绝访问的都是没有以管理员模式开启！！！
echo.
echo 建议关闭杀毒软件！！净网大师等乱七八糟的东西！！
echo.
echo 此脚本运行一次后就不用再打开了
echo.
echo 若担心出现不可控问题请直接右上角关闭脚本并且删除,脚本到此并没有修改任何操作
echo.
echo ------------------------------------------------------------------------------------------
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
set file=C:\Windows\System32\Drivers\etc\hosts
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

set a=99.86.144.37 www.kingkong.com.tw
set b=54.230.173.113 m.kingkong.com.tw
set c=99.84.142.75 static.kingkong.com.tw
set d=13.224.161.65 img.kingkong.com.tw

set n=99.86.144.109 api.kingkongapp.com
set o=99.86.144.93 www.kingkongapp.com

set p=23.2.134.221 connect.facebook.net

set e=103.210.23.233 cht.ws.kingkong.com.tw
set f=23.91.101.80 cht-1.ws.kingkong.com.tw
set g=107.150.124.169 cht-2.ws.kingkong.com.tw
set h=36.255.220.6 ctl.ws.kingkong.com.tw
set i=23.91.97.192 ctl-1.ws.kingkong.com.tw
set j=103.14.33.45 ctl-2.ws.kingkong.com.tw
set k=45.249.245.27 ctl-3.ws.kingkong.com.tw
set l=103.72.146.38 ctl-4.ws.kingkong.com.tw
set m=128.1.136.140 state-1.ws.kingkong.com.tw

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

set /p option=如果你认真阅读了以上内容，并且同意操作，请输入 Y 然后回车继续运行，输入其他的都会导致脚本退出
if %option%==Y goto :Verify
if %option%==y goto :Verify
exit


:Verify

echo.
echo 此为二次验证,旨在防止伸手党,喜欢UP的话记得【点个关注】并且【一键三连】啊！
echo.
choice /t 1 /d y /n >nul
explorer "https://space.bilibili.com/180659383"
set /p Nicename=请在打开的网页中找到并且输入UP的【昵称】以确认继续操作,昵称应该为大小写加下划线
if %Nicename%==Ailiaili_ goto :Start
exit

:Start
cls
echo.
echo 请选择要操作的选项（建议用过先前脚本的先运行 2 再运行 1 否则不会成功）
echo.
set /p choice=1.优化kingkong 2.恢复hosts文件 3.打开kingkong主页 4.退出 0.【免优化】直接打开kingkong(若打不开请进行优化)
echo.
if %choice%==1 goto Unlock
if %choice%==2 goto Restore
if %choice%==3 goto Open
if %choice%==4 goto End
if %choice%==0 goto Temp

:Unlock

echo.
choice /t 2 /d y /n >nul
ipconfig /flushdns
echo.
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

if not exist %file% (
        type nul>%file%
		echo %file%文件不存在，已创建该文件！
    ) else (
		echo %file%文件已存在，无需创建！	
    )
echo.
choice /t 2 /d y /n >nul
 
(echo.) >> %file%
(echo -------------此为加快kingkong的代码-------------) >> %file%
(echo %a%) >> %file%
(echo %b%) >> %file%
(echo %c%) >> %file%
(echo %d%) >> %file%
(echo %e%) >> %file%
(echo %f%) >> %file%
(echo %g%) >> %file%
(echo %h%) >> %file%
(echo %i%) >> %file%
(echo %j%) >> %file%
(echo %k%) >> %file%
(echo %l%) >> %file%
(echo %m%) >> %file%
(echo %n%) >> %file%
(echo %o%) >> %file%
(echo %p%) >> %file%
(echo -------------此为加快kingkong的代码-------------) >> %file%

echo 当你看到这行字的时候说明已经可以打开kingkong了,若提示拒绝访问请管理员方式运行
echo.
echo 欢迎支持付导的直播间 https://www.kingkong.com.tw/2477024
echo.
echo 运行成功,将回到选择界面
choice /t 5 /d y /n >nul
goto Start

:Restore

echo.
echo 此操作会将hosts文件还原为Windows默认状态，如果对该文件有过其他修改的请提前备份。
echo.
echo 不知道我在说什么的可以直接进行下一步操作
echo.
pause

choice /t 2 /d y /n >nul

if not exist %file% (
        echo %file%文件不存在，不用恢复
    ) else (
	    del /a /f /q %file%
		
    )
echo.
type nul>%file%
echo 恢复完成,将回到选择界面
choice /t 2 /d y /n >nul
goto Start

:Open
echo.
echo 网页即将打开,稍后回到选择界面
choice /t 2 /d y /n >nul
explorer "https://www.kingkong.com.tw/"
goto Start

:End
exit

:Temp
echo.
echo 网页即将打开,稍后回到选择界面
choice /t 2 /d y /n >nul
explorer "https://www.kingkongapp.com/"
goto Start
