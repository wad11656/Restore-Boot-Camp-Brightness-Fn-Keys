# Restore Boot Camp Screen Brightness Function Keys

**Update 1/30/21:** See my configurable version of this app for non-Boot-Camp/Vanilla Windows installs here: https://github.com/wad11656/BrightKeyMap.

*Boot Camp users, you may also want to have a look at [this post](https://www.reddit.com/r/bootcamp/comments/cesawt/how_to_get_windows_10_1903_working_properly_in/) for fixing Boot Camp drivers.*

## What is it? ##

This is an application for Boot Camp users who have already installed their latest MacBook drivers, including using [Brigadier](https://github.com/timsutton/brigadier/releases/tag/0.2.4), and are still having issues retaining their Boot Camp Control Panel settings after reboots and have lost `F1`/`F2` brightness key functionality. It is scripted using [AutoHotkey](https://www.autohotkey.com/). I made it for myself because personally, my brightness keys&#39; functionality broke after upgrading Boot Camp from Win7→Win10...Even though Windows 10 is officially supported on Late 2012 models.

<img src="https://raw.githubusercontent.com/wad11656/Restore-Boot-Camp-Brightness-Keys/master/README%20Media/brightkeys.png" width="370">

This program enables the trackpad&#39;s &quot;Tap to Click&quot; and two-finger "Secondary Click" (a.k.a. right-click) options in **Boot Camp Control Panel** on each login to prevent needing to manually enable these settings after every boot. (Not sure if anyone else in the universe even has either of these issues..):

<img src="https://raw.githubusercontent.com/wad11656/Restore-Boot-Camp-Brightness-Keys/master/README%20Media/trackpadtab.png" width="370">

So in summary it enables the following on each login:

* `F1`/`F2` brightness keys *(Credit: [qwerty12's LaptopBrightnessSetter](https://github.com/qwerty12/AutoHotkeyScripts/tree/master/LaptopBrightnessSetter))*
  * My script makes it so you don't need to press `fn` + `F1`/`F2` because it changes the function keys setting in **Boot Camp Control Panel**. So, functionality is restored to expected behavior (a.k.a. Just press `F1`/`F2`).
* Trackpad - Tap to Click
* Trackpad - 2-finger Scroll
* Trackpad - 2-finger right-click

*Tested on 13&#39;&#39; MacBook Pro Late 2012*

## How to Use ##

After install and each time you log in, **Task Scheduler** runs the `.exe` that enables the functionality outlined above. (You should see the **Boot Camp Control Panel** pop up briefly while it does its thing.)

**NOTE:** Press `⌘+[Function Key]` (a.k.a. `⊞Win+[Function Key]`) to use function keys with their standard functionality. (`Shift+[Function Key]` & `Ctrl+[Function Key]` hotkeys should still work as expected.)

## How Does it Work/How to Edit? ##

The `.exe` runs a self-contained script that should enable the `F1`/`F2` brightness keys, then opens **Boot Camp Control Panel** and sets function key presses to be interpreted as "vanilla" `F1`, `F2`, `F3` etc. inputs (necessary to make my script work without needing to press the `fn` key) and restores trackpad capabilities.

If you want to tweak it yourself, it's built off an [AutoHotkey](https://www.autohotkey.com/) `.ahk` script which can be found in the repo.

In order to run the `.exe` with Admin rights (to bypass the UAC prompt when opening the **Boot Camp Control Panel**), it's executed on login using a **Task Scheduler** task with highest privileges.

## Troubleshoot ##

Fetch and install your latest Boot Camp drivers for your hardware using [Brigadier](https://github.com/timsutton/brigadier/releases/tag/0.2.4) or [Campies](https://github.com/fgimian/campies) (outdated). You should have a **Boot Camp Control Panel** applet  (launches from `C:\Windows\System32\AppleControlPanel.exe`).

<img src="https://raw.githubusercontent.com/wad11656/Restore-Boot-Camp-Brightness-Keys/master/README%20Media/control.png" width="370">

If your **Boot Camp Control Panel** layout/options are different than mine, it's likely my script won't work and the [AutoHotkey](https://www.autohotkey.com/) `.ahk` file in my repo would need to be tweaked for your needs:

<img src="https://raw.githubusercontent.com/wad11656/Restore-Boot-Camp-Brightness-Keys/master/README%20Media/1.png" width="370"><img src="https://raw.githubusercontent.com/wad11656/Restore-Boot-Camp-Brightness-Keys/master/README%20Media/2.png" width="370"><img src="https://raw.githubusercontent.com/wad11656/Restore-Boot-Camp-Brightness-Keys/master/README%20Media/3.png" width="370"><img src="https://raw.githubusercontent.com/wad11656/Restore-Boot-Camp-Brightness-Keys/master/README%20Media/4.png" width="370">

## Requests ##

If this is potentially useful to anyone out there, I assume there&#39;s modifications and incompatibilities people would need resolved, so email me or create GitHub Issues, or download the AutoHotkey script from the repo and edit it yourself.


2020-2021 Wade Murdock

[https://wadestechtrove.blogspot.com/](https://wadestechtrove.blogspot.com/)

wad11656@gmail.com
