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

## Beats

Let's start with a first sketch.  Start Processing.  Then, click on the following link and copy the program text into your Processing window:

> [Beats.pde](https://github.com/ycpcs/fys100-fall2016/blob/gh-pages/labs/demo/lab05/Beats.pde)

Save the sketch as `Beats`.  Run the sketch.  You should see the following:

> <a href="../img/lab05/beats.png"><img alt="Beats screenshot" style="width: 303px;" src="../img/lab05/beats.png"></a>

Plug in your headphones and *adjust the system volume to a low setting*.  Run the sketch and click the mouse in the window.  You will hear 8 electronic bass drum beats.  (If you don't hear them, raise the volume a bit and click again.)  So what is going on?

The important part of the sketch is the `create` function.  This function is responsible for creating instruments, rhythms, melodies, figures, and arranging the figures into a composition.  (Don't worry, we'll explain what all of that means in a bit.)  Basically, this is the function where you specify what you want to hear.  Let's take a look at what we have in this initial `create` function.

{% highlight java %}
tempo(110, 4);
major(60);
{% endhighlight %}

These lines set the tempo to 110 beats per minute and 4 beats per measure, and set the scale to a major scale rooted at MIDI note 60, which is C4.

{% highlight java %}
Instrument drumkit = percussion(TR808); // Roland TR-808 sounds
Instrument bass = instr(FLUID, 36); // fretless bass
v(bass, 0.5); // make the bass a bit quieter
{% endhighlight %}

These lines create two instruments called `drumkit` and `bass`.  The `drumkit` instrument is a percussion instrument which plays sounds from the `TR808` soundfont.  The `bass` instrument is a melodic instrument which plays sounds from patch 36 in the `FLUID` soundfont.  (Patch 36 is "Fretless Bass" in the GM1 sound set, which is the encoding that the `FLUID` soundfont supports.)  The `v` function is used to adjust the volume of the `bass` instrument to 50% of full volume.  (It's too loud otherwise.)

{% highlight java %}
Rhythm kickr = r(p(0), p(1), p(2), p(3));
{% endhighlight %}

This line creates a rythm called `kickr` which has "strikes" on beats 0, 1, 2, and 3.  (The FunWithSound library considers 0 to be the first beat in a measure.)  This is the classic "four on the floor" rhythm heard frequently in dance music.

{% highlight java %}
Figure kickf = pf(kickr, 36, drumkit);
{% endhighlight %}

This line creates a figure called `kickf` which plays the rhythm `kickr` using note 36, which is "Bass Drum 1" in the GM1 percussion key map, and using our `drumkit` instrument.  The idea is that percussion instruments don't play notes with different pitches; instead, each note plays a different percussion sound.  See the [GM1 sound set](https://www.midi.org/specifications/item/gm-level-1-sound-set) (scroll to the bottom of the page) for the full list of percussion sounds.  Note that not all soundfonts support all of the percussion sounds.

{% highlight java %}
add1(gf(kickf));
add1(gf(kickf));
{% endhighlight %}

These lines schedule the `kickf` figure to be played twice.  Basically, each call to `add1` specifies the figure or figures to be played in one measure of the composition.  (The use of the `gf` function allows multiple figures to be specified.)  Since we have two calls to `add1`, each of which plays `kickf`, we hear the "four on the floor" pattern twice.

## Rhythms, Melodies, and Figures

We haven't really explained what rhythms, melodies, and figures are.  Please read the [Basics documentation](https://github.com/daveho/FunWithSound/wiki/Basics) for the FunWithSound library, which provides an overview of all of the important FunWithSound concepts.

# Your turn

<!-- vim:set wrap: ­-->
<!-- vim:set linebreak: -->
<!-- vim:set nolist: -->
