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
    }
}