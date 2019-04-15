-----------------------
Name: km_SNES9x2016 Bright
Version: 4-15-19
Creator: KMFDManic/madmonkey/kps501/gpstar/byuu
Category: KMFD Experimental Cores
Emulated System: Super Nintendo/Super Famicom/MSU-1/Nintendo Satellaview/Sufami Turbo
-----------------------
=== Core by libretro (Unofficial) ===

This particular SNES9x2016 Bright Variant offers some incredible features, only seen before
in Higan/BSNES/Standalone PC SNES9x, as well as some nifty, entirely new, never seen before 
additions!  Due to the extreme accuracy of BSNES, which unfortunately runs 5-11 FPS for Mini 
Users, the PC SNES9x (licensed) special chip codings had to be implemented, instead.  This is 
an unofficial libretro Core, as a result of the need to avoid potentially breaking anything 
Mainline Wise! These additions are all listed below!  It is a true sandbox experience!  

Available executables and arguments to run Core:
- /bin/snes <rom> <clover_args>
- /bin/snes9x-bright <rom> <clover_args>
- /bin/snes-bright <rom> <clover_args>

libretro commits by: kps501
Hakchi module system by madmonkey

RetroArch Xtreme + HMODS maintained by KMFDManic/madmonkey/pcm

NES/SNES Mini shell integration by Cluster

Hakchi CE by Team Shinkansen (DanTheMan827/princess_daphie/skogaby/madmonkey)

(c) 2016-20xx

sandbox of snes9x (pre-1.56 rebase) for testing experimental features (meant for having fun only!!) -      ideally not recommended for upstream core inclusion (seriously, it's going to be messy clutter!)

dropoff 7 preview1:
- fast loading
- catmull-rom (hermite) interpolation
- better default interpolation limits, tweak hq tables
- fix snes device hotplugging

dropoff 6:
- add byuu's hitachi dsp chipset code (cx4)
- backport Phalanx fix
- remove Kat's Run DMA kludge (Phalanx fix)
- add "Raise Sprite Limit" feature (works on dsp4 bios also)


dropoff 5:
- add byuu's nec dsp chipset code (dsp1-4,st010-011)
- add special chipset emulation: hardware, software
- fixed default gaussian volume
- fixed internal runahead soft reset


dropoff 4:
- improved direct bsx game loading (no bios)
- backport st010 accuracy fixes
- backport interlace fixes (Air Strike Patrol, F1 ROC II)
- clear interlace flicker on load state
- correctly apply settings on load state
- internal runahead interlace fixes (many)
- show interlace frames: even, odd, both


dropoff 3:
- internal runahead feature (good speedup)
- hires blending: disabled, half, full, special
- fix Lufia 2 interlace game id detection
- ignore bios option (bs-x, sufami turbo)
- try loading game even if bios missing
- backport Little Magic smp fix


dropoff 2:
- backport blargg ntsc filters: disabled, monochrome, rf, composite, s-video, rgb
- dsp-1 chipset: rev 1b, rev 1(a) (pilotwings light plane demo)
- interlace speed: auto (lufia 2 credits), slow, fast
- use special game hacks: enabled, disabled (emu testing)
- inline mudlord interpolation (small speedup)


dropoff 1:
- apply settings on boot and loadstate (sound channels, layers, misc)
- speakers mode: 16-bit stereo/mono, 8-bit stereo/mono, mute
- console region: auto, japan-usa (ntsc), europe (pal)
- allow invalid vram access: disabled, enabled (bad hacks, 60hz pal games, debugging)
- interpolation: 4-tap (4096 gaussian + no brr overflow), 8-tap (4096 sinc). default gaussian has brr overflow hardware error
- backport game fixes (Top Gear 3000, Dragon Ball Z: Super Butouden 2, Final Fantasy 6)
- change core name to Snes9x Bright

differences between Standard 9x and Bright:

- 1a) Hardware dsp emulation (cx4,dsp1-4,st010-011) -- Hayazashi Nidan Morita Shougi (Japan), SD Gundam GX (Japan) are not playable yet in standard; Top Gear 3000 overall, F1 ROC II AI accuracy

- 1b) Memory randomization. This just means that the RNG seeder is changed on every clean game boot (not reset). If you watch the demo attract mode of standard (always Sidewinder) vs Bright (1st track can vary). This carries over when racing -- AI behavior, bonus items, etc.

- 1c) Hires blending - special mode. This activates a clean pseudo-transparency mode that works correctly with other Retroarch scaling shaders. Kirby's Dream Land 3 (USA / Japan), Jurassic Park (all regions), Bishoujo Senshi Sailor Moon S - Kondo wa Puzzle de Oshioki yo! (Japan). Standard blending is blurry.

- 1d) Blargg filter - monochrome. This is merely for fun.

- 1e) DSP-1 chipset. If set to 1/1a, Pilotwings plane demo will correctly land on the airstrip. Not with 1b (standard).

- 1f) Interlace speed. To see this in action, play Air Strike Patrol. Go to the radar briefing screen (new game). Standard will show text at 30fps. Bright can show the fast 60fps version. Or toggle to slow.

libretro port:
- 1g) Internal runahead. This is libretro feature, but libretro port is buggy when interlace is on (A.S.P. radar briefing). Bright fixes this bug and another libretro brief flicker bug when loading interlace savestates. Also libretro is buggy when playing lightgun games. Bright tries to fix this also.

- 1h) Overclocking. This is good for shooter games that suffer from slowdown. Gradius III in particular.

- 1i) Sprite Flicker. Shows more sprites at a time. Gradius III, Phalanx.

additional notes:
- 4096 point interpolation will sound very similar to mudlord's 256 ones. Because Brad Miller is that good at using small tables to make high quality output. But for imaginary phantom audio benefits, 4/8-tap custom is the way to go!

- allow invalid vram access. This is useful for playing Europe in ntsc mode. Like Marko's Magic Football with copier protection disabled. Possibly Lucky Luke. World Masters Golf. And smoothing out some others. Or (old) translation hacks that don't work on real hardware. Plus newer hacks can abuse this feature and give lots of illegal speedup! And notably, this option breaks Hook gameplay.

- internal runahead feature. runs faster. Kirby's Dream Land 3 ## 0: 188 ## 1: 93 (frontend) ==> 104 (secondary) ==> 121 (internal). Also fixes lightgun cursor.

- hires blending special activates custom blending only for these games. extra compatible with lores scalers. Bishoujo Senshi Sailor Moon S - Kondo wa Puzzle de Oshioki yo, Kirby's Dream Land 3 / Hoshi no Kirby 3, Jurassic Park

- memory randomization. Only Super Off Road seems to use it so far.

- hardware chipset emulation. Name your files cx4.bin, dsp1.bin, dsp1b.bin, dsp2.bin, dsp3.bin, dsp4.bin, snes_custom_4tap.bin, snes_custom_8tap.bin, st0010.bin, st0011.bin and place in Retroarch system folder.

- there's a rough chance of dropoff6 coming out. But there's honestly not much left to be added. Interest is naturally low. Likely almost no one will find out about this build and I can keep it a secret!

- if you actually enjoy using this win32 snes9x port, then erm. Thanks! And it's alright if you don't like/want/accept/use any of these features. They are leftovers and not intended for mainstream libretro community consumption.
