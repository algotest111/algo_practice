# 2025. 07. 26

# PYTHON_1
def solution(numbers):
    answer = []
    n = len(numbers)
    for i in range(n):
        found = False
        for j in range(i + 1, n):
            if numbers[j] > numbers[i]:
                answer.append(numbers[j])
                found = True
                break
        if not found:
            answer.append(-1)
    return answer

# PYTHON_2
def solution(numbers):
    answer = []
    for i in range(len(numbers)-1):
        a = numbers[i]
        if a > max(numbers[i+1:]):
            answer.append(-1)
        else:
            for j in range(i+1, len(numbers)):
                if numbers[j] > a:
                    answer.append(numbers[j])
                    break
    answer.append(-1)
            
        
    return answer


