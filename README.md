Reason Custom Remote Scripts for Korg NanoKey2
=====================================

This project is related to the usage of the midi controller Korg nanoKey2 (or any midi controller with keys)   with Propellerhead Reason.
The aim is to add new functionalities by using the keys from the 2nd octave, which are hardly used normally because their corresponding pitch is lower and useless.

The new functionalities are:
The first 2 black keys (C#-1 and D#-1) are for Rewind and Fast Forward.
The next 3 black keys are for Stop, Play, Record.
The next black key (C#0) is for Loop On/Off.
The first two white keys (C-1 and D-1) are for Undo and Redo.
The next 2 white keys (E-1 and F-1) are for selecting the previous/next track in sequencer.
The next 2 white keys (G-1 and A-1) are for selecting the previous/next patch for the synth/effect device.
The next 2 white keys (B-1 and C0) control the value of the Filter Cutoff and Filter Reso from Subtractor via the VELOCITY!! For e.g. hit the key slower, the cutoff will be lower.

Press the Oct- button until it is lit full red (not blinking red because blink is annoying) !!

You may take these files as template in order to add new functionalities as needed, see the file nanoKEY2.lua which has pattern for each keys like this:
- for a regular key which must send note on/off as usual
  {pattern="<100x>? NOTE_NUMBER_IN_HEX zz",name="Keyboard",note="NOTE_NUMBER_IN_DECIMAL"}, 
- for a special key which can be mapped to a special button from Reason, search for "REWIND" button in the files as example
  {pattern="<100x>? NOTE_NUMBER_IN_HEX zz",name="BUTTON_NAME",note="NOTE_NUMBER_IN_DECIMAL"}, 
- for a special key which can be mapped like a midi controller from Reason, search for "Key24Velo" in the files as example
  {pattern="<1001>? NOTE_NUMBER_IN_HEX xx",name="Key__Velo"},


The possibilities are (almost) endless.
The full list of controllable items is in the file    remotables.pdf   which you can find on the propellerheads.se blog site:
https://www.propellerheads.se/substance/discovering-reason/files/part33/remotables.pdf
https://www.propellerheads.se/substance/discovering-reason/files/part33/remotables.txt
See the full blog for more details:
https://www.propellerheads.se/blog/control-remote


Installation details:
=====================

Overwrite the existing files with the ones provided:
- for Windows XP
C:\Documents and Settings\All Users\Application Data\Propellerhead Software\Remote\Maps\Korg\nanoKEY2.remotemap
C:\Documents and Settings\All Users\Application Data\Propellerhead Software\Remote\Codecs\Lua Codecs\Korg\nanoKEY2.lua

- for Windows Vista/7/10
c:\ProgramData\Propellerhead Software\Remote\Maps\Korg\nanoKEY2.remotemap
c:\ProgramData\Propellerhead Software\Remote\Codecs\Lua Codecs\Korg\nanoKEY2.lua

- for OS X
Macintosh HD/Library/Application Support/Propellerhead Software/Remote/Maps/Korg/nanoKEY2.remotemap
Macintosh HD/Library/Application Support/Propellerhead Software/Remote/Codecs/Lua Codecs/Korg/nanoKEY2.lua
