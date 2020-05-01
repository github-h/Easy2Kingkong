@echo off&PUSHD %~DP0 &TITLE Easy2Kingkong
color 0A
>NUL 2>&1 REG.exe query "HKU\S-1-5-19" || (
    ECHO SET UAC = CreateObject^("Shell.Application"^) > "%TEMP%\Getadmin.vbs"
    ECHO UAC.ShellExecute "%~f0", "%1", "", "runas", 1 >> "%TEMP%\Getadmin.vbs"
    "%TEMP%\Getadmin.vbs"
    DEL /f /q "%TEMP%\Getadmin.vbs" 2>NUL
    Exit /b
)

echo --------------------------------------------------------------------------
echo 本脚本由付导的录播组制作  当前版本为 V2.1 (20200501)
echo.&echo 请勿二改 大量传播 本脚本只解决当前的DNS污染问题
echo.&echo 该脚本失效可以在 GitHub 上提交 Issues
echo.&echo 最新脚本将在个人置顶动态、UP视频简介、群文件和 Github 同步推送
echo.
echo --------------------------------------------------------------------------
echo.&echo 凡是提示拒绝访问的都是没有以管理员模式开启！！！
echo.&echo 建议关闭杀毒软件！！净网大师等乱七八糟的东西！！
echo.&echo 此脚本【运行一次】后就不用再打开了
echo.&echo 若担心出现不可控问题请直接右上角关闭脚本并且删除,脚本到此并没有进行任何操作
echo.
echo ---------------------------------------------------------------------------
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
set file=C:\Windows\System32\Drivers\etc\hosts
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
set a=13.32.53.51 play.lang.live
set b=54.192.151.124 static.kingkongapp.com
set c=13.32.53.112 play-api.lang.live
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
set d=54.192.151.111 api.kingkongapp.com
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
set e=*.*.*.* state-1.lv-show.com
set f=*.*.*.* state-2.lv-show.com
set g=*.*.*.* state-3.lv-show.com
set h=103.210.23.233 cht.ws.kingkong.com.tw
set i=23.91.101.80 cht-1.ws.kingkong.com.tw
set j=107.150.124.169 cht-2.ws.kingkong.com.tw
set k=36.255.220.6 ctl.ws.kingkong.com.tw
set l=23.91.97.192 ctl-1.ws.kingkong.com.tw
set m=103.14.33.45 ctl-2.ws.kingkong.com.tw
set n=45.249.245.27 ctl-3.ws.kingkong.com.tw
set o=103.72.146.38 ctl-4.ws.kingkong.com.tw
set p=128.1.136.140 state-1.ws.kingkong.com.tw
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

echo 如果你认真阅读了以上内容，并且同意操作，请按照指示输入，输入其他的都会【导致脚本退出】
echo.&set /p option=请输入 Y 然后回车继续运行
if %option%==Y goto :Verify
if %option%==y goto :Verify
exit

:Verify

cls
echo.&echo 此为二次验证,旨在防止伸手党,喜欢UP的话记得【点个关注】并且【一键三连】啊！
echo.&echo 请在打开的网页中找到并且输入UP的【昵称】然后回车,昵称应该为大小写加下划线
choice /t 2 /d y /n >nul
explorer "https://space.bilibili.com/180659383"
echo.&set /p Nicename=
if %Nicename%==Ailiaili_ goto :Start
exit

:Start

cls
echo.&echo 为了使更多人能正确使用该脚本，特推出向导模式
echo.&echo 向导模式将一步步的教您判断是否该启用某个功能
echo.&echo 删除了菜单模式，因为我懒得同步修改了
echo.&echo 请注意！！！
echo.&echo 如果您是第一次使用该脚本，或者在之前脚本中并不知道该输入什么，请使用向导模式
echo --------------------------------------------------------------------------
echo.&echo 请选择您要进入的模式
echo.&echo 1.向导模式 （推荐使用）
echo.&set /p choice=输入数字后回车：

if %choice%==1 goto Guide0
if %choice%==debug goto Debug
goto Start

:Guide0

cls
echo.&echo 请问您之前是否使用该脚本的【先前版本】
echo.&echo 选择 Y 将恢复原始hosts文件
echo.&echo 请理解，为了使脚本生效，恢复原始hosts文件是必不可少的
echo.&echo 如果您不知道或者忘记了，也建议您选择 Y 恢复一下
echo --------------------------------------------------------------------------
echo.&echo Y.是的，我使用过
echo.&echo N.不，我是第一次使用（如果最后没生效，请使用 Y 来恢复）
echo.&set /p choice=输入 Y 或 N 后回车：

if %choice%==y goto G-Restore
if %choice%==Y goto G-Restore
if %choice%==n goto Guide1
if %choice%==N goto Guide1
goto Guide0

:Guide1

cls
echo.&echo 金刚(kingkong)直播结束运营，现在将由浪Play继续提供服务
echo.&echo 浪Play平台的网址为 play.lang.live
echo.&echo 按测试情况来看，该网站应该【不用进行任何】优化即可正常访问,最多需要【优化一下弹幕】（如果右侧弹幕框不正常显示）
echo.&echo 但是任然会存在一部分打不开或者比较卡的情况，所以我就更一下吧。请根据你的实际使用情况来决定是否需要优化
echo --------------------------------------------------------------------------
echo.&echo 请选择您要使用的网站
echo.&echo 1.play.lang.live
echo.&set /p choice=输入数字后回车：

if %choice%==1 goto langplay
goto Guide1

:Guide2

cls
color 0A
echo.&echo 恭喜您，您现在可以正常访问浪Play直播了
echo.&echo 如果突然某项功能缺失，或者无法正常访问，您可以B站私信我，或者 Github 上提交 Issues
echo.&echo 最新脚本将在个人置顶动态、UP视频简介、群文件和 Github 同步推送
echo.&echo 如果觉得本脚本对你有用，请点个关注并且一键三连啊！
choice /t 5 /d y /n >nul
pause
goto End

:langplay

cls
color 07
echo.&echo 您当前是否可以【正常打开并加载 play.lang.live 】
echo.&echo 请使用Chrome、Firefox、Edge等浏览器，国产浏览器有可能会主动拦截并标记为危险页面
echo --------------------------------------------------------------------------
echo.&echo 请选择
echo.&echo Y.是的，我可以正常打开
echo.&echo N.不，我无法正常打开
echo.&echo O.我不知道，打开让我看看（此为字母O 不是数字0）
echo.&set /p choice=输入 Y 或 N 或 O 后回车：

if %choice%==Y goto langplay-api
if %choice%==y goto langplay-api
if %choice%==N goto G-Unlock
if %choice%==n goto G-Unlock
if %choice%==O goto G-Open
if %choice%==o goto G-Open
goto langplay

:langplay-api

cls
color 70
echo.&echo 您当前是否可以正常打开和显示【二维码】并且登陆
echo.&echo 登录框在网页右上角请使用 浪live APP扫描登陆，不是用微信扫!
echo.&echo 请注意
echo.&echo 如果二维码能正常显示，则网页加载正常
echo.&echo 手机扫描无反应或者提示超时均是手机端的问题，与网页无关，请自行找浪Play官方协助解决，或者换个手机去扫
echo.&echo 二维码提示过期请刷新网页
echo --------------------------------------------------------------------------
echo.&echo 请选择
echo.&echo Y.是的，我可以正常打开
echo.&echo N.不，我无法正常打开
echo.&echo O.我不知道，打开让我看看（此为字母O 不是数字0）
echo.&set /p choice=输入 Y 或 N 或 O 后回车：

if %choice%==Y goto langplay-danmu
if %choice%==y goto langplay-danmu
if %choice%==N goto G-Api-app
if %choice%==n goto G-Api-app
if %choice%==O goto G-Open
if %choice%==o goto G-Open
goto langplay-api

:langplay-danmu

cls
color 71
echo.&echo 您当前是否可以正常显示并且发送【弹幕】
echo.&echo 弹幕框加载较慢可能需要多次刷新
echo.&echo 对于大部分人来说，这一步优化是必要的
echo.&echo 请注意
echo.&echo 不管您是否登陆，正常情况下网页右侧的弹幕框均可以显示弹幕
echo.&echo 登陆后如果您发现右侧弹幕框只有您一人，则需要进行优化（指输入 N ）
echo.&echo 优化后请多次刷新或者多换浏览器，因为加载较慢。如果还不行请重新运行脚本
echo --------------------------------------------------------------------------
echo.&echo 请选择
echo.&echo Y.是的，我可以正常显示
echo.&echo N.不，我无法正常显示
echo.&echo O.我不知道，打开让我看看（此为字母O 不是数字0）
echo.&set /p choice=输入 Y 或 N 或 O 后回车：

if %choice%==Y goto Guide2
if %choice%==y goto Guide2
if %choice%==N goto G-Danmu-app
if %choice%==n goto G-Danmu-app
if %choice%==O goto G-Open
if %choice%==o goto G-Open
goto langplay-danmu

:G-Unlock

cls
echo.
if not exist %file% (
        type nul>%file%
		echo %file%文件不存在，已创建该文件！
    ) else (
		echo %file%文件已存在，无需创建！	
    )
echo.&choice /t 2 /d y /n >nul

(echo.) >> %file%
(echo %a%) >> %file%
(echo %b%) >> %file%
(echo %c%) >> %file%

choice /t 2 /d y /n >nul
ipconfig /flushdns
echo.&echo 当你看到这行字的时候说明已经可以打开浪Play了,若提示拒绝访问请自查是否开启了杀软等
echo.&echo 欢迎支持付导的直播间 https://play.lang.live/2477024
echo.&echo 即将回到选择界面
choice /t 5 /d y /n >nul
goto langplay

:G-Api-app

cls
echo.
if not exist %file% (
        type nul>%file%
		echo %file%文件不存在，已创建该文件！
    ) else (
		echo %file%文件已存在，无需创建！	
    )

echo.&choice /t 2 /d y /n >nul

(echo.) >> %file%
(echo %d%) >> %file%

choice /t 2 /d y /n >nul
ipconfig /flushdns
echo.&echo 当你看到这行字的时候说明已经成功优化api了,请再次测试是否可以查看登录框
echo.&echo 若提示拒绝访问请自查是否开启了杀软等
echo.&echo 运行成功,将回到选择界面
choice /t 5 /d y /n >nul
goto langplay-api

:G-Danmu-app

cls
echo.
if not exist %file% (
        type nul>%file%
		echo %file%文件不存在，已创建该文件！
    ) else (
		echo %file%文件已存在，无需创建！	
    )
echo.&choice /t 2 /d y /n >nul

(echo.) >> %file%
(echo %h%) >> %file%
(echo %i%) >> %file%
(echo %j%) >> %file%
(echo %k%) >> %file%
(echo %l%) >> %file%
(echo %m%) >> %file%
(echo %n%) >> %file%
(echo %o%) >> %file%
(echo %p%) >> %file%

choice /t 2 /d y /n >nul
ipconfig /flushdns
echo.&echo 当你看到这行字的时候说明已经成功优化弹幕了,请再次测试是否可以查看弹幕
echo.&echo 若提示拒绝访问请自查是否开启了杀软等
echo.&echo 运行成功,将回到选择界面
choice /t 5 /d y /n >nul
goto langplay-danmu

:G-Restore

cls
echo.&echo 此操作会将 hosts 文件还原为Windows默认状态，如果对该文件有过其他修改的请【提前备份】。
echo.&echo 如果需要备份请直接右上角关闭脚本，备份后再次运行，脚本到此并没有进行任何操作
echo.&echo 不知道我在说什么的可以直接进行下一步操作
echo.&pause

if not exist %file% (
        echo %file%文件已恢复
    ) else (
	    del /a /f /q %file%
		
    )
echo.&type nul>%file%
echo 恢复完成,将回到选择界面
choice /t 3 /d y /n >nul
goto Guide1

:G-Open

cls
echo.&echo 网页即将打开,稍后回到选择界面
choice /t 3 /d y /n >nul
explorer "https://play.lang.live/"
goto langplay

:End
exit

:Debug
Start notepad %file%