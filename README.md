# Restore Boot Camp Screen Brightness Function Keys

## What is it? ##

Application scripted using [AutoHotkey](https://www.autohotkey.com/). Created to restore the `F1`/`F2` brightness hotkeys on MacOS Boot Camp (Apple&#39;s Windows dual boot software) on hardware where their functionality has broken. (My brightness keys&#39; functionality broke after upgrading Boot Camp from Win7→Win10.)

Also enables the trackpad&#39;s &quot;Tap to Click&quot; and right-click capabilities in **Boot Camp Control Panel** on login to prevent needing to manually enable these settings after every boot. (Not sure if anyone else in the universe even has either of these issues..)

So in summary it enables the following on each login:

* `F1`/`F2` brightness keys *(Credit: [qwerty12's LaptopBrightnessSetter](https://github.com/qwerty12/AutoHotkeyScripts/tree/master/LaptopBrightnessSetter))*
  * My script makes it so you don't need to press `Fn` + `F1`/`F2`, so functionality is restored to expected behavior (Just press `F1`/`F2`).
* Trackpad - Tap to Click
* Trackpad - 2-finger Scroll
* Trackpad - 2-finger right-click

*Tested on 13&#39;&#39; MacBook Pro Late 2012*

## How to Use ##

Reboot after install. Each time you log in, **Task Scheduler** runs the .exe. If the install is compatible in your environment like on mine, the .exe should run a script open **Boot Camp Control Panel** and restore Brightness keyboard keys + trackpad right-click and tap capabilities.

**NOTE:** Press `⌘+[Function Key]` (a.k.a. `⊞Win+[Function Key]`) to use function keys with their standard functionality.

## Requests ##

If this is potentially useful to anyone out there, I assume there&#39;s modifications and incompatibilities people would need resolved, so email me or create GitHub requests, or download the AutoHotkey script from the repo and edit it yourself.


2020 Wade Murdock

[https://wadestechtrove.blogspot.com/](https://wadestechtrove.blogspot.com/)

wad11656@gmail.com
