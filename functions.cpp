// functions.cpp
// デバッグ・テスト用のダミー実装

#include "functions.h"
#include <vector>

// sum_to_n: 1からnまでの合計（n<=0なら0）
int sum_to_n(int n) {
    if (n <= 0) return 0;
    int total = 0;
    for (int i = 1; i <= n; ++i) {
        total += i;
    }
    return total;
}

// 常に与えられた配列を返す
std::vector<int> bubble_sort(const std::vector<int>& array) {
    return array;
}

// 常に0を返す
int fibonacci(int n) {
    return 0;
}
