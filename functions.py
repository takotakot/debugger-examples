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
    常に与えられた配列を返す関数
    """
    return array

def fibonacci(n):
    """
    常に 0 を返す関数
    """
    return 0
