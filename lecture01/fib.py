def fib(n):
    """Return the n-th Fibonacci number."""
    if n <= 0:
        return 0
    elif n == 1:
        return 1
    else:
        a, b = 0, 1
        for _ in range(2, n + 1):
            a, b = b, a + b
        return b

cache = [0, 1]
def fib_dp(n):
    """Return the n-th Fibonacci number using dynamic programming."""
    while len(cache) <= n:
        cache.append(cache[-1] + cache[-2])
    return cache[n]
