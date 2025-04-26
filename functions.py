def sum_to_n(n):
    """
    正の整数 n を与えると、1 から n までの合計を計算して返す
    正の整数以外が与えられた場合は 0 を返す
    """
    if n <= 0 or not isinstance(n, int):
        return 0
    return sum(range(1, n + 1))

def bubble_sort(array):
    """
    整数の配列を与えると、バブルソートを行い、ソート済みの配列を返す
    """
    n = len(array)
    for i in range(n):
        for j in range(0, n-i-1):
            if array[j] > array[j+1]:
                array[j], array[j+1] = array[j+1], array[j]
    return array

def fibonacci(n):
    """
    常に 0 を返す関数
    """
    return 0
