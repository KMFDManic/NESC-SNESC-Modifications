=== RetroArch module for hakchi ===
version 1.7.0

Note: Now works with both the NESC & SNESC!

This is a hakchi/hakchi2 module which adds libretro cores and RetroArch frontend to your NES/SNES Mini.
If using older than 2.20 Hakchi, this will not work on your NES/SNES Mini properly.

NOTE: You may have to manually exit Hakchi, on occasion, if Home Button/Shortcut for Reset does not work properly!

It will automatically detect unsupported NES games and run them instead of the default emulator. Save states will work as usual.

It can also run games for other consoles. This pack already contains the following cores:

- fceumm (NES, many mappers, UNIF support)
- nestopia (NES, FDS)

Available executables and arguments:

- /bin/retroarch-clover <core> <rom> <clover_args>
  runs RetroArch with specified core,
  designed for executing from clover shell, 
  so it parses all clover arguments (saves, aspect ratio, etc.)
- /bin/nes <rom> <clover_args>
  runs "fceumm" core or "nestopia" for FDS games
- /bin/retroarch-mini [core] [rom] [args]
  runs RetroArch directly, without clover integration
- /bin/retroarch
  RetroArch binary
- /bin/fceumm <core> <rom> <clover_args>
  runs compressed games with fceumm core
- /bin/nestopia <core> <rom> <clover_args>
  runs compressed games with nestopia core

Sometimes default emulator of NES/SNES mini is not working with some games when it should. So you can just add "--retroarch" command line argument to use RetroArch.

Known issues:
- Nintendo 64 save-states are not working, battery backup working fine

Cores by libretro, compiled by pcm
Updated by Cluster/pcm/KMFDManic
NES Mini port by madmonkey
NES Mini shell integration by Cluster
Additional modules by pcm
(c) 2017-2018
