# Restore Boot Camp Screen Brightness Function Keys

## What is it? ##

Application scripted using [AutoHotkey](https://www.autohotkey.com/). Created to restore the `F1`/`F2` brightness hotkeys on MacOS Boot Camp (Apple&#39;s Windows dual boot software) on hardware where their functionality has broken. (My brightness keys&#39; functionality broke after upgrading Boot Camp from Win7→Win10.)

<img src="https://raw.githubusercontent.com/wad11656/Restore-Boot-Camp-Brightness-Keys/master/README%20Media/brightnesskeys.jpg" width="370">

Also enables the trackpad&#39;s &quot;Tap to Click&quot; and right-click capabilities in **Boot Camp Control Panel** on login to prevent needing to manually enable these settings after every boot. (Not sure if anyone else in the universe even has either of these issues..):

<img src="https://raw.githubusercontent.com/wad11656/Restore-Boot-Camp-Brightness-Keys/master/README%20Media/trackpad.png" width="370">

So in summary it enables the following on each login:

* `F1`/`F2` brightness keys *(Credit: [qwerty12's LaptopBrightnessSetter](https://github.com/qwerty12/AutoHotkeyScripts/tree/master/LaptopBrightnessSetter))*
  * My script makes it so you don't need to press `Fn` + `F1`/`F2`, so functionality is restored to expected behavior (Just press `F1`/`F2`).
* Trackpad - Tap to Click
* Trackpad - 2-finger Scroll
* Trackpad - 2-finger right-click

*Tested on 13&#39;&#39; MacBook Pro Late 2012*

## How to Use ##

Reboot after install. Each time you log in, **Task Scheduler** runs the .exe. The .exe should run a script that enables the `F1`/`F2` brightness keys, then opens **Boot Camp Control Panel** and sets function key presses to be interpreted as `F1`, `F2`, etc. (necessary to make my script work without needing to press the `Fn` key) and restores trackpad capabilities.

**NOTE:** Press `⌘+[Function Key]` (a.k.a. `⊞Win+[Function Key]`) to use function keys with their standard functionality.

## Troubleshoot ##

Fetch and install your latest Boot Camp drivers for your hardware using [Campies](https://github.com/fgimian/campies) (inspired by the original, [Brigadier](https://github.com/timsutton/brigadier/releases/tag/0.2.4)). You should have a **Boot Camp Control Panel** applet  (launches from `C:\Windows\System32\AppleControlPanel.exe`).

<img src="https://raw.githubusercontent.com/wad11656/Restore-Boot-Camp-Brightness-Keys/master/README%20Media/control.png" width="370">

If your **Boot Camp Control Panel** tabs/buttons look any different than mine, it's likely my script won't work and the [AutoHotkey](https://www.autohotkey.com/) `.ahk` file in my repo would need to be tweaked for your needs:

<img src="https://raw.githubusercontent.com/wad11656/Restore-Boot-Camp-Brightness-Keys/master/README%20Media/1.png" width="370"><img src="https://raw.githubusercontent.com/wad11656/Restore-Boot-Camp-Brightness-Keys/master/README%20Media/2.png" width="370"><img src="https://raw.githubusercontent.com/wad11656/Restore-Boot-Camp-Brightness-Keys/master/README%20Media/3.png" width="370"><img src="https://raw.githubusercontent.com/wad11656/Restore-Boot-Camp-Brightness-Keys/master/README%20Media/4.png" width="370">

## Requests ##

If this is potentially useful to anyone out there, I assume there&#39;s modifications and incompatibilities people would need resolved, so email me or create GitHub Issues, or download the AutoHotkey script from the repo and edit it yourself.


2020 Wade Murdock

[https://wadestechtrove.blogspot.com/](https://wadestechtrove.blogspot.com/)

wad11656@gmail.com
