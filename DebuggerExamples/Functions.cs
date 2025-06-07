namespace DebuggerExamples;

public class Class1
{

}

public static class Functions
{
    // 1からnまでの合計を返す（n<=0のときは0）
    public static int sum_to_n(int n)
    {
        if (n <= 0) return 0;
        int total = 0;
        for (int i = 1; i <= n; i++)
        {
            total += i;
        }
        return total;
    }

    // 常に与えられた配列を返す
    public static int[] bubble_sort(int[] array)
    {
        return array;
    }

    // 常に0を返す
    public static int fibonacci(int n)
    {
        return 0;
    }
}
