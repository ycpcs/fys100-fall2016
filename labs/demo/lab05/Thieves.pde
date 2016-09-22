import io.github.daveho.funwithsound.*;

FunWithSound fws = new FunWithSound(this);

// Directory where you keep your soundfonts
String SOUNDFONTS = "/home/dhovemey/SoundFonts";

String TR808 = SOUNDFONTS + "/tr808/Roland_TR-808_batteria_elettronica.sf2";
String FLUID = SOUNDFONTS + "/fluid/FluidR3 GM2-2.SF2";

class MyComp extends Composer {
  void create() {
    tempo(110, 4);
    major(60);

    Instrument drumkit = percussion(TR808); // Roland TR-808 sounds
    Instrument bass = instr(FLUID, 36); // fretless bass
    v(bass, 0.5); // make the bass a bit quieter
    
    Rhythm kickr = r(p(0), p(1), p(2), p(2.5), p(3), p(3.25));
    Figure kickf = pf(kickr, 36, drumkit);
    
    Rhythm kick2r = r(p(0), p(1), p(2.5), p(2.75), p(2), p(2.5), p(3), p(3.25), p(3.75));
    Figure kick2f = pf(kick2r, 36, drumkit);
    
    Rhythm kick3r = r(p(0), p(1.5), p(2));
    Figure kick3f = pf(kick3r, 36, drumkit);
    
    Rhythm snarer = r(p(3), p(3.5), p(3.75));
    Figure snaref = pf(snarer, 40, drumkit);
    
    Rhythm snare2r = r(p(1), p(3));
    Figure snare2f = pf(snare2r, 40, drumkit);

    Rhythm snare3r = r(p(1), p(3), p(3.5), p(3.75));
    Figure snare3f = pf(snare3r, 40, drumkit);

    Rhythm bassr = r(s(0, .25), s(.25, .25), s(.5, .25), s(.75, .25), s(1, .5), s(1.75, .25), s(2.25, .25), s(2.75, .25), s(3, .5));
    Melody bassm = m(-17, -17, -17, -17, -17, -18, -17, -18, -17);
    Figure bassf = f(bassr, bassm, bass);
    
    Rhythm bass2r = r(s(0, .25), s(.25, .25), s(.5, .25), s(.75, .25), s(1, .5), s(1.5, .25), s(1.75, .5));
    Melody bass2m = m(-17, -17, -17, -17, -17, -18, -17);
    Figure bass2f = f(bass2r, bass2m, bass);
    
    Rhythm hihatr = r(
      p(0),
      p(.5), p(.75), p(1),
      p(1.5), p(1.75), p(2),
      p(2.5), p(2.75), p(3),
      p(3.25), p(3.375), p(3.5), p(3.75)
    );
    Figure hihatf = pf(hihatr, 42, drumkit);
    
    add1(gf(kickf));
    add1(gf(kick2f));
    add1(gf(kickf));
    add1(gf(kick2f));
    add1(gf(kick3f));
    add1(gf(kick3f, snaref));
    add1(gf(kick3f));
    add1(gf(kick3f, snaref));

    add1(gf(kickf, snare2f, hihatf, bassf));
    add1(gf(kick2f, snare3f, hihatf, bass2f));
    add1(gf(kickf, snare2f, hihatf, bassf));
    add1(gf(kick2f, snare3f, hihatf, bass2f));
    
    //audition(bass);
  }
}

MyComp c = new MyComp();

void setup() {
  size(600,200);
  textSize(32);
  fill(0);
  text("Click to start playing", 125, 140); 
  c.create();
}

void draw() {
}

void mouseClicked() {
  fws.play(c);
}