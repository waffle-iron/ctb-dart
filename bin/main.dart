import "dart:io";
import "dart:async";
import "dart:convert";
import "../lib/battle.dart";
import "../lib/actor.dart";

Actor a = new Actor("#", 1);
Actor b = new Actor("@", 2);
Actor c = new Actor("!", 3);
Actor d = new Actor("%", 4);
Actor e = new Actor("&", 5);
Actor f = new Actor("M", 6);
Actor g = new Actor("P", 7);
Actor h = new Actor("d", 8);

Battle battle = new Battle([a, b, c, d], [e, f, g, h]);

void main() {
  readLine().listen(processLine);
}

Stream readLine() => stdin
.transform(UTF8.decoder)
.transform(new LineSplitter());

void processLine(String line) {
  battle.process();
}
