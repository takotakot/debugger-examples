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

    // バブルソートの正しい実装
    public static int[] bubble_sort(int[] array)
    {
        int n = array.Length;
        int[] arr = (int[])array.Clone();
        for (int i = 0; i < n - 1; i++)
        {
            for (int j = 0; j < n - i - 1; j++)
            {
                if (arr[j] > arr[j + 1])
                {
                    int temp = arr[j];
                    arr[j] = arr[j + 1];
                    arr[j + 1] = temp;
                }
            }
        }
        return arr;
    }

    // 常に0を返す
    public static int fibonacci(int n)
    {
        return 0;
    }
}
