import io.github.daveho.funwithsound.*;

FunWithSound fws = new FunWithSound(this);

// Directory where you keep your soundfonts
String SOUNDFONTS = "C:/SoundFonts";

String TR808 = SOUNDFONTS + "/tr808/Roland_TR-808_batteria_elettronica.sf2";
String FLUID = SOUNDFONTS + "/fluid/FluidR3 GM2-2.SF2";

class MyComp extends Composer {
  void create() {
    tempo(110, 4);
    major(60);

    Instrument drumkit = percussion(TR808); // Roland TR-808 sounds
    Instrument bass = instr(FLUID, 36); // fretless bass
    v(bass, 0.5); // make the bass a bit quieter
    
    Rhythm kickr = r(p(0), p(1), p(2), p(3));
    Figure kickf = pf(kickr, 36, drumkit);
    
    add1(gf(kickf));
    add1(gf(kickf));
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
