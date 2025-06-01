// sum_to_n_test.cpp
// sum_to_n 関数のテスト（Google Test）

#include "functions.h"
#include <gtest/gtest.h>

TEST(SumToNTest, ReturnsZeroForNonPositive) {
    EXPECT_EQ(sum_to_n(0), 0);
    EXPECT_EQ(sum_to_n(-5), 0);
}

TEST(SumToNTest, ReturnsSumForPositive) {
    EXPECT_EQ(sum_to_n(10), 55); // 1+2+...+10 = 55
}

// main 関数は gtest_main で自動生成される場合が多い
// int main(int argc, char **argv) {
//     ::testing::InitGoogleTest(&argc, argv);
//     return RUN_ALL_TESTS();
// }
