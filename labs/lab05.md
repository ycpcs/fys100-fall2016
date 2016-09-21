---
layout: default
title: "Lab 5: Drum and bass"
---

# Learning goals

* Learn about and experiment with rhythms
* Learn about and experiment with bass lines
* Learn about and experiment with soundfonts
* Learn about the MIDI standard and the GM1 soundset

# What to do

In today's lab you will experiment with rhythm and bass patterns.

## Computers and music

As computers have become more powerful, their capability to generate sound has expanded.  Today, not only is it *possible* to create music on a computer, it is commonplace for computers to be used in the production of music.  In many music genres (electronica, hip hop, etc.) computers are the primary creative medium.

In the music unit of the course (which starts today), we will explore writing *programs* to create music.

## MIDI, Soundfonts

There are two technologies we will need to discuss before we get started: MIDI and Soundfonts.

[MIDI](https://www.midi.org/), which stands for Musical Instrument Digital Interface, is a standard for representing music and controlling musical instruments.  It was invented in the 1980s, and remains the most widely used standard for digital music.

MIDI is based on the idea of *messages*.  A MIDI message indicates that a particular note or instrument sound should start or stop playing at a particular instant in time.  Music is composed and played by generating MIDI messages and delivering them to an instrument capable of interpreting them and rendering them as sounds.

MIDI represents musical notes as *note numbers*, which correspond to notes in standard (Western) music notation.  For example, note number 69 is A4, i.e., the note A in the fourth full octave on a piano keyboard.  See this handy [MIDI note number](https://newt.phys.unsw.edu.au/jw/notes.html) diagram for more information.

MIDI represents instruments abstractly as *patch numbers*.  Essentially, different patch numbers indicate different instruments.  The [GM1 sound set](https://www.midi.org/specifications/item/gm-level-1-sound-set) is the most common way to assign patch numbers to instrument sounds.  For example, patch 1 in the GM1 sound set is "Acoustic Grand Piano".  Special MIDI messages can be used to select a patch number, allowing control of instrument sounds.

The precise way that MIDI messages are translated into instrument sounds depends on the device that is responsible for interpreting and rendering MIDI notes.  In this course, we will be using a software synthesizer called Gervill that is built into Processing.  Gervill can generate its own sounds, but they are very dull, so we won't be using them.  Instead we will be using *soundfonts*.  A soundfont is a collection of instrument sounds that can be used to render MIDI notes.  By telling Gervill which soundfont or soundfonts we want to use in a composition, we have control over the sound of the notes played.

There are lots of soundfonts available for free download: the [Hammersound](http://www.hammersound.net/) website is a good one, but there are many others.  On the computers in KEC 123, we have created a directory `C:/SoundFonts` containing a selection of good soundfonts.

# Your turn

<!-- vim:set wrap: ­-->
<!-- vim:set linebreak: -->
<!-- vim:set nolist: -->
