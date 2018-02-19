=== RetroArch Neo Module for Hakchi ===
version 1.6.7

RetroArch Neo consists of merged code from both the Original Team & 'TheOtherGuys'

The Neo Additions contain a set of very clever & carefully calculated optimizations to clear & ensure
more memory is always available for emulation via RetroArch.  This minimizes potential slowdowns, as 
well as allows for more reliable game play.  Feedback from the Community at large will always be most
paramount as far as future changes for the better!

Note: Now works with both the NESC & SNESC!

This is a hakchi/hakchi2 module which adds libretro cores and RetroArch frontend to your NES/SNES Mini.
If using older than 2.20 Hakchi, this will not work on your NES/SNES Mini properly.

It can also run games for other consoles. This pack already contains the following cores:

- fceumm (NES, many mappers, UNIF support)
- nestopia (NES, FDS)

Available executables and arguments to run Cores:

- /bin/fceumm <core> <rom> <clover_args>
- /bin/nestopia <core> <rom> <clover_args>
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

Cores by libretro
Original Team: Compiled & Updated by: Cluster/
KMFDManic/madmonkey/pcm
Neo Build Addtions by:
'TheOtherGuys' CompCom/Swingflip/Viral_DNA
NES Mini port by madmonkey
NES Mini shell integration by Cluster
Additional modules by pcm
(c) 2016-2018
