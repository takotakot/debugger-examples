// sum_to_n: 1からnまでの合計を返す。n<=0なら0を返す
int sum_to_n(int n) {
  if (n <= 0) return 0;
  int total = 0;
  for (int i = 1; i <= n; i++) {
    total += i;
  }
  return total;
}

// バブルソートを行う関数
List<int> bubble_sort(List<int> array) {
  int n = array.length;
  List<int> arr = List.from(array);
  for (int i = 0; i < n - 1; i++) {
    for (int j = 0; j < n - i - 1; j++) {
      if (arr[j] > arr[j + 1]) {
        int temp = arr[j];
        arr[j] = arr[j + 1];
        arr[j + 1] = temp;
      }
    }
  }
  return arr;
}

// フィボナッチ数列を計算する関数
int fibonacci(int n) {
  if (n <= 0) return 0;
  if (n == 1) return 1;
  return fibonacci(n - 1) + fibonacci(n - 2);
}
