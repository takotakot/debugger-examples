// sum_to_n: 1からnまでの合計を返す。n<=0なら0を返す
int sum_to_n(int n) {
  if (n <= 0) return 0;
  int total = 0;
  for (int i = 1; i <= n; i++) {
    total += i;
  }
  return total;
}

// 常に与えられた配列を返す関数
List<int> bubble_sort(List<int> array) {
  return array;
}

// 常に0を返す関数
int fibonacci(int n) {
  return 0;
}
