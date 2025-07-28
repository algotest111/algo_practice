# 2025. 07. 28

# PYTHON_1
def solution(n, a, b):
    count = 1
    while a % 2 != 1 and b - a != 1:
        a = round(a / 2)
        b = round(b / 2)
        count += 1
    return count

# PYTHON_2(답지 보고 이해함)
def solution(n,a,b):
    answer = 0

    while a != b :
        a = (a+1) // 2
        b = (b+1) // 2
        answer += 1

    return answer