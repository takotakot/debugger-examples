// fibonacci_test.cpp
// fibonacci 関数のテスト（Google Test）

#include "functions.h"
#include <gtest/gtest.h>

TEST(FibonacciTest, ReturnsZeroForNonPositive) {
    EXPECT_EQ(fibonacci(0), 0);
    EXPECT_EQ(fibonacci(-3), 0);
}

TEST(FibonacciTest, ReturnsFibonacciForPositive) {
    EXPECT_EQ(fibonacci(8), 21); // 0,1,1,2,3,5,8,13,21
}

// main 関数は gtest_main で自動生成される場合が多い
// int main(int argc, char **argv) {
//     ::testing::InitGoogleTest(&argc, argv);
//     return RUN_ALL_TESTS();
// }
