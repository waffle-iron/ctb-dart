import "./actor.dart";

class Battle {
  final actors = <Actor>[];
  int currentActorIndex = 0;
  final int ENERGY_TO_ACT = 12;

  Battle(a, b) {
    actors.add(a[0]);
    // for (Actor actor in a) {
      // actors.add(actor);
    // }
    // for (Actor actor in b) {
      // actors.add(actor);
    // }
  }

  void process() {
    Actor actor = actors[currentActorIndex];
    // print("Processing " + actor.ascii);
    if (actor.energy.current >= ENERGY_TO_ACT) {
      int remainder = actor.energy.current - ENERGY_TO_ACT;
      actor.energy.reset();
      actor.energy.increase(remainder);
    }

    actor.update();
    currentActorIndex = (currentActorIndex + 1) % actors.length;
  }
}
