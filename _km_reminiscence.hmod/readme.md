-----------------------
Name: RetroArch 179 Xtreme
Creator: Libretro
HMOD By: KMFDManic|madmonkey|bslenul|DanTheMan827
Version: 10-25-19
Category: KMFD RetroArch
Emulated System: RetroArch
Command Line: /bin/fceumm, /bin/fceumm-legacy, /bin/nestopia, /bin/quicknes
Prerequisite BIOS: system/disksys.rom (Famicom Disk System)
-----------------------
(![km](https://i.imgur.com/hgWuCs4.png))

**NES Creator Credits:**

**FCEUmm:** FCEU Team|CaH4e3 **fixNES:** FIX94 
**Nestopia:** Martin Freij|R.Belmont|R.Danbrook **QuickNES:** blargg|kode54

RetroArch Xtreme contains customized KMFDManic|bslenul optimizations for many Cores & Games

Note 1: With Xtreme Overclock installed, a game launched with --overclock will OC to 1.34 Ghz and downclock to 1.2 Ghz on quit

Note 2: RetroAchievements are off by default due to it taking longer to load games if one does not have
WI-FI Connectivity.  Enable simply by going into RetroArch Settings, Achievements, toggling ON.

Note 3: To Disable Notifications and Menu Widgets, go into RetroArch Settings, close content, then:

- Settings, User Interface, Menu Widgets Off
- Settings, Onscreen Display, Onscreen Notifications Off

Finally, Exit RetroArch, and Notifications and Menu Widgets should now be Off.

# Zelda: Ancient Stone Tablets: Save Tethering

--shared-save CLV-FOLDER-NAME-HERE

IE:

/bin/snes18 /var/games/CLV-U-CBDRA/bszelda_mq2.smc.7z

would become:

/bin/snes18 /var/games/CLV-U-CBDRA/bszelda_mq2.smc.7z --shared-save CLV-U-CBDRA

CLV-U-CBDRA is the CLV Folder that I have bszelda_mq1.smc.7z in. So, week 2 is
now tethered, save wise, to week 1! Do the same for weeks 3 and 4, tethering those
to week 1!

# Misc

* clover-canoe-shvc: tweaked the filters arguments for Canoe and RA, so you can use bilinear in perfect pixel mode for example (only worked with 4:3 before) and added a --crt-mode which adds both scanlines and bilinear
* preinit file: check if read/write access to /media/hakchi for USB and SS for RA states
* fix for SNES not working on NES with Canoe in command line.
* Optimizations here and there, should be a bit faster to load/quit RetroArch games.
* Added a workaround for PrBoom saves.

# USB folders changes

* RetroArch stuff on USB should now be in `usb:\hakchi\retroarch`:
    * \database and \playlists if you're using the scanning and playlist features from RetroArch, it's not often used by users on the S/NESC, but its here if you want to!
    * \overlay for additional borders/bezels, drop your .png and .cfg files here.
    * \system to put your BIOS files and/or your samples for MAME cores for examples,  
    it works like the normal system folder on NAND, so if BIOS needs a subfolder you'll need a subfolder too,  
    same for samples, e.g. for MAME2003 you'd have to put your samples in `usb:\hakchi\retroarch\system\mame2003\samples`.
    * \states for the RetroArch save states, note that if the folder doesnt exist states made from the Quick Menu will simply get wiped on exit, just like on NAND.

# New feature to be able to keep RetroArch's save states if you're using NAND

* Being able to keep states made from Quick Menu was a "feature" often requested, simply add `--nand-states` at the end of your command line and this will be possible now!
* Keep in mind that storage is **very** limited on S/NESC so you shouldnt use this on every game...
* Also to not eat all the storage, states are compressed on exit and extracted on launch so it's a bit slower to start/quit RetroArch,  
during my testings it added ~0.7sec on quit with 2 states when exiting a SNES game, and ~0.15sec on launch.
* If you need to remove states for a game, simply FTP to `/var/lib/clover/profiles/0/CLV-ID_OF_THE_GAME` and delete the "ra_states" folder, or just the state inside you want to get rid of.

# Softpatching

* Most people arent even aware this is already a thing, but RetroArch can actually patch your games on the fly, this is compatible with .ips, .ups and .bps,  
here is a list of compatible cores: https://docs.libretro.com/guides/softpatching/#cores-compatibility
* Simply put your .ips/.ups/.bps file in the same folder as your game, **NAMING IS IMPORTANT**, basically you need same filename as your rom, minus last extension, e.g.:
    * if you have a game named `game.gba.7z`, name the patch `game.gba.ips` (or .ups/.bps).
    * if you have a game named `game.gba`, name the patch `game.ips`.
* Softpatching didnt work previously on SNES games because on launch the rom is getting separated from the patch (due to .sfrom -> .sfc conversion needed for RetroArch), now it works fine!  
That was also true for NES games depending on the command line.
* No magic being done tho, you still need a compatible rom for your patch :D

# Default controller options changes

* Added a "#1" and "#2" to `Nintendo Clovercon` name in the autoconfig files, really useful when you want/need to switch port for controllers from the RetroArch menu.
* Left analog to digital turned OFF by default now, this option was a PITA for games that use different actions between dpad and stick, e.g. in GoldenEye 64 you move forward and look down at the same time...
* Autoconfig mapping by default, so now in menus you should see "A" instead of "button 0", "D-Pad Up" instead of "button 13", etc.

# Bezel-mode and overlays changes

* For those who dont know, bezel-mode is a mode that will use currently selected SNESC border and will fit the game image into it.  
It will also change resolution and filters depending on video mode selected on the SNES UI, e.g. CRT will have scanlines and bilinear filtering.  
Due to the shape of the borders, this is obviously not meant for games like GBA, PSP, vertical SHMUPs, etc., or image will be completely distorded.
* Having `--bezel-mode` in command line or holding L-button while starting a game will activate bezel-mode for that game.
* Holding R-button while starting a game will activate bezel-mode for the current core instead of EVERY game like before, which makes more sense.
* Optional command lines (only works with bezel-mode ON):
    * `--enable-scanlines` to activate scanlines while 4:3 or Pixel Perfect mode is selected.
    * `--no-scanlines` to disable scanlines in CRT mode.
    * `--enable-smooth` to activate bilinear filtering while 4:3 or Pixel Perfect mode is selected.
    * `--no-smooth` to disable bilinear filtering in CRT mode.
* Without bezel-mode, overlay is disabled by default, if you want to turn it ON it is in `Quick Menu > Onscreen Overlay`, there are 3 presets:
    * `border.cfg`, this one will use the current border selected on SNES UI.
    * `scanlines.cfg` is a scanlines overlay (not as good as a shader, but less demanding), no borders.
    * `border_with_scanlines.cfg` is current selected border + scanlines applied to it.