import "./energy.dart";

class Actor {
  Energy energy = new Energy();
  int energyPerTick;
  String ascii;

  Actor(String ascii, int energyPerTick) {
    this.ascii = ascii;
    this.energyPerTick = energyPerTick;
  }

  update() {
    this.energy.increase(this.energyPerTick);
  }
}
