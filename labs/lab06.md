---
layout: default
title: "Lab 6: Melodies"
---

# Learning goals

* Learn about pitches, frequencies, and scales
* Add melodic parts to a composition

# What to do

The goal for today is to start to add melodic parts to the composition you started in [Lab 5](lab05.html).

## Pitches and scales

Here is a tiny bit of music theory.

### Octaves

A note's pitch is determined by its frequency.  The higher the frequency, the higher the pitch.

An interesting auditory phenomenon occurs when you multiply a note's frequency by 2: you get a higher note that sounds "the same" as the first note, only higher:

> <iframe width="600" height="166" scrolling="no" frameborder="no" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/227054905&amp;color=ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false"></iframe>

Frequencies that differ by a factor of 2 are one *octave* apart.

So, what about notes within an octave?  Western music uses a 12 tone scale, meaning that there are 12 distinct pitches in each octave.  The difference between two notes is called a *semitone* or a *half step*.  So, what is the relationship between the notes within an octave?

The basic idea is that we want the notes within the scale to be separated by more or less the same difference in pitch.  Because the next higher octave involves doubling the frequency, moving to the next note involves "one-twelfth doubling" of the frequency.  The idea is that there is a factor, which, if multiplied by a note frequency, gives us the frequency of the next note, *and*, if we multiply a note frequency by the factor 12 times, we effectively double the frequency, giving us the same note at the next higher octave.

This "note multiplier", which we'll call *f*, can be computed as

> *f* = 2<sup>1/12</sup>

In other words, 2 raised to the power 1/12.  This factor is approximately 1.059.  Multiplying any note frequency by *f* gives us the frequency of the next higher note, and dividing by *f* gives us the frequency of the next lower note.  This scheme is known as [equal temperament](https://en.wikipedia.org/wiki/Equal_temperament), and in modern times is used nearly universally for instrument tuning.

Note that because equal temperament only tells us how to move between notes, we need to have one note's frequency to be specified as a constant.  The most common standard is that A4 (the note "A" in the fourth audible octave) is defined as exactly 440 Hz.  All other note frequencies are defined relative to this reference point.

### Scales

If you've ever sat down at a piano or keyboard and played random keys, you've probably noticed that it doesn't sound very good.  This is because most western music uses notes selected from a *scale*.  Typically, a scale includes exactly 7 notes (and variations in lower and higher octaves).  Scales are defined by specifying a pattern of how many semitones there are between notes, starting at the root note of the scale.  The important thing to realize about scales is that the number of semitones to reach the next note is not always 1!

A major scale uses the following pattern of semitones:

> 2, 2, 1, 2, 2, 2, 1

Here is a C major scale:

> <iframe width="600" height="166" scrolling="no" frameborder="no" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/227058130&amp;color=ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false"></iframe>

A natural minor scale uses the following pattern of semitones:

> 2, 1, 2, 2, 1, 2, 2

Note how in each case, the sum of the semitone increments is 12, which makes sense, because the progression specifies how to reach the scale's root note in the next higher octave.

Here is a C minor scale:

> <iframe width="600" height="166" scrolling="no" frameborder="no" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/227058460&amp;color=ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false"></iframe>

Notice how the major scale sounds "happy", and the minor scale sounds "sad".

### What this means to you

You will probably want to pick a scale to use in your composition, and use notes selected from that scale.  In particular, C major and A minor are good choices, because the notes in those scales correspond exactly to the white keys on the piano keyboard.

## Example: Thieves Like Us

Yeah.
