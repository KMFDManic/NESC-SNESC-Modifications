-----------------------
Name: km_Caprice32
Version: 5-18-19
Creator: KMFDManic/D_Skywalk
Category: KMFD Experimental Cores
Emulated System: Amstrad CPC
Install Size: 342 KB
-----------------------
=== Core by libretro ===
 
Available executables and arguments to run Core:
- /bin/cap32 <rom> <clover_args>
- /bin/caprice32 <rom> <clover_args>
- /bin/cpc <rom> <clover_args>

 Caprice 32 usage (written by D_Skywalk): 
    launch an TAPE (cdt) or DSK, and game will autostart.

 Core options:
  Autorun - disabled/enabled. If enabled, the core will run the first bas/bin found in DSK

 Controls:
	- JoyConfig 1
	L2  1
	R2  2
	L   RETURN
	R   SPACE
	SEL ** ALT MODE **
	STR H
	A   FIRE1
	B   FIRE2
	X   N
	Y   Y
	DIR JOYDIR

	- JoyConfig 2
	L2  F1
	R2  F2
	L   ENTER
	R   BCKSPC
	SEL ** ALT MODE **
	STR R
	A   SPACE
	B   SHIFT
	X   COPY
	Y   CTRL
	DIR CURSORS

    - Alternative mode (Keep SEL pressed)
	L2  
	R2  
	L   
	R   
	SEL ** KEEP PRESS **
	STR ** Change JoyConfig **
	UP  ## RUN"DISC or RUN"DISK
	DW  ## |TAPE and RUN"
	LF  ## CAT
	RG  ## |CPM
	A   1
	B   2
	X   3
	Y   4

	
 To start a game without autorun:
	Caprice32 emulates a real CPC, which means that to run a game you have to do the same thing as you would with a real CPC.

	To play a game, you must insert a disk image and type two basic commands:

		- You have to know what files the disc image has. It's easy, just press
		    [SELECT] and [DPAD-LEFT]. This will then type CAT on screen.
		- You'll see a list of files. The important filetypes are BIN, BAS or ones without 
		  the extension, ex: ABADIA.BAS, GRYZOR.BIN, TETRIS.
		- With JoyConfig2 (press [SELECT]+[START]), use [B] and [X] to copy the game's filename.
		- To run the game, place the cursor at the beginning of the name, with JoyConfig2 press
		  [Y]+[DPAD-LEFT] buttons and press [L] while holding them. This will put RUN" in front of the file name and launch the game.
		- For some games, you don't have to type the  RUN" command, they load with the |CPM command 
          Those are easily detectable. If you get an error when you executing the CAT command
          (ignore, Cancel), these games are protected. Don't worry about it, they 
          are even easier to execute, just press [SELECT] and [DPAD-RIGHT].

Hakchi module system by madmonkey

RetroArch Xtreme + HMODS maintained by KMFDManic/madmonkey/pcm

NES/SNES Mini shell integration by Cluster

Hakchi CE by Team Shinkansen (DanTheMan827/princess_daphie/skogaby/madmonkey)

(c) 2016-20xx
