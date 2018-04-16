-----------------------
Name: km_RetroArch Standard (4-16-18)
Creator: KMFDManic/madmonkey
Category: KMFDManic Experimental Core Set
-----------------------
=== RetroArch NEO Standard Module for Hakchi ===
version 1.7.1 Standard Variant
Standard Variant is for those who want to keep things simplified without any additional Optimizations, Bells or Whistles:)

RetroArch Neo consists of merged code from both the Original Team & 'TheOtherGuys'

This is a hakchi/hakchi2 module which adds libretro cores and RetroArch frontend to your NES/SNES Mini.
If using older than 2.20 Hakchi, this will not work on your NES/SNES Mini properly.

Note: Now works with both the NESC & SNESC!

It can also run games for other consoles. This pack already contains the following cores:

It can also run games for other consoles. This pack already contains the following cores:

- fceumm (NES, many mappers, UNIF support)
- nestopia (NES, FDS)
- quicknes (NES)

Available executables and arguments to run Cores:

- /bin/fceumm <core> <rom> <clover_args>
- /bin/ffmpeg <core> <rom> <clover_args> FFMPEG Required
- /bin/nestopia <core> <rom> <clover_args>
- /bin/quicknes <core> <rom> <clover_args>
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

Compiled & Updated by: 

'TheOriginalTeam'/Cluster/
KMFDManic/madmonkey/pcm

NEO Additions by:

'TheOtherGuys'/CompCom/Swingflip/ViralDNA
& BsNeLuL

Cores by libretro

Hakchi module system by madmonkey

NES/SNES Mini shell integration by Cluster

(c) 2016-2018
