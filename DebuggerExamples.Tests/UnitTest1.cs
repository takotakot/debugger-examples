using Xunit;
using DebuggerExamples;

namespace DebuggerExamples.Tests
{
    public class UnitTest1
    {
        [Fact]
        public void SumToN_Input10_Returns55()
        {
            int result = Functions.sum_to_n(10);
            Assert.Equal(55, result);
        }

        [Fact]
        public void BubbleSort_InputArray_ReturnsSortedArray()
        {
            int[] input = {5, 3, 8, 1, 2};
            int[] expected = {1, 2, 3, 5, 8};
            int[] result = Functions.bubble_sort(input);
            Assert.Equal(expected, result);
        }
    }
}