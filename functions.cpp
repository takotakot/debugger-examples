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

// バブルソート: 配列を昇順にソートして返す
std::vector<int> bubble_sort(const std::vector<int>& array) {
    std::vector<int> result = array;
    int n = result.size();
    for (int i = 0; i < n - 1; ++i) {
        for (int j = 0; j < n - i - 1; ++j) {
            if (result[j] > result[j + 1]) {
                std::swap(result[j], result[j + 1]);
            }
        }
    }
    return result;
}

// 常に0を返す
int fibonacci(int n) {
    return 0;
}
