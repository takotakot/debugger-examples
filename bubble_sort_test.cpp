// bubble_sort_test.cpp
// bubble_sort 関数のテスト（Google Test）

#include "functions.h"
#include <gtest/gtest.h>
#include <vector>

TEST(BubbleSortTest, SortsArray) {
    std::vector<int> input = {5, 3, 8, 1, 2};
    std::vector<int> expected = {1, 2, 3, 5, 8};
    EXPECT_EQ(bubble_sort(input), expected);
}

// main 関数は gtest_main で自動生成される場合が多い
// int main(int argc, char **argv) {
//     ::testing::InitGoogleTest(&argc, argv);
//     return RUN_ALL_TESTS();
// }
