class Energy {
  int current = 0;

  void increase(amount) {
    this.current += amount;
  }

  void decrease(amount) {
    this.current -= amount;
  }

  void reset() {
    this.current = 0;
  }
}
