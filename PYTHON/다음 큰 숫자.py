# 2025. 07. 28

# PYTHON_1
def solution(n):
    nums = list(str(bin(n)))
    x = 1
    while nums.count('1') != list(str(bin(n + x))).count('1'):
        x += 1
    return n + x

# PYTHON_2
def solution(n):
    count_value = bin(n).count('1')
    while True:
        n = n + 1
        if bin(n).count('1') == count_value:
            break
    return n