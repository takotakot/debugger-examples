import 'package:debugger_examples/debugger_examples.dart';
import 'package:test/test.dart';

void main() {
  test('sum_to_n returns 55 when input is 10', () {
    expect(sum_to_n(10), 55);
  });

  test('bubble_sort sorts [5, 3, 8, 1, 2] to [1, 2, 3, 5, 8]', () {
    expect(bubble_sort([5, 3, 8, 1, 2]), [1, 2, 3, 5, 8]);
  });

  test('fibonacci returns 21 when input is 8', () {
    expect(fibonacci(8), 21);
  });
}
