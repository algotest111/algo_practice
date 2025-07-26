# 2025. 07. 26

# PYTHON_1


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