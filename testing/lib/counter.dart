class Counter {
  int _counter = 0;

  int get count => _counter;

  void increentCounter() {
    _counter++;
  }

  void decrementCounter() {
    _counter--;
  }

  void reset() {
    _counter = 0;
  }
}
