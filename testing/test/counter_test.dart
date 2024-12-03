import 'package:flutter_test/flutter_test.dart';
import 'package:testing/counter.dart';

void main() {
  late Counter counter;
  setUp(() {
    counter = Counter();
  });

  group(
    'Counter Class-',
    () {
      test(
        'given counter class when it is instantiated then value of count should be 0',
        () {
          final val = counter.count;

          expect(val, 0);
        },
      );
      test(
        'given counter class when it is instantiated then value of count should be 1',
        () {
          counter.increentCounter();
          final val = counter.count;

          expect(val, 1);
        },
      );
      test(
        'given counter class when it is decreentd then the value of count should be -1',
        () {
          counter.decrementCounter();
          final val = counter.count;
          expect(val, -1);
        },
      );
      test(
          'given counter class when it is decreentd then the value of count should be 0',
          () {
        counter.reset();
        expect(counter.count, 0);
      });
    },
  );
}
