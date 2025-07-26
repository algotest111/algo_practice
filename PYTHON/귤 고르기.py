# 2025. 07. 26

# PYTHON_1


# PYTHON_2
def solution(k, tangerine):
    answer = 0
    count = 0
    tangerine.sort()
    tangerine_size = list(set(tangerine))
    tangerine_count = [0] * len(tangerine_size)
    for i in tangerine:
        tangerine_count[tangerine_size.index(i)] += 1
    tangerine_count.sort(reverse = True)
    for i in tangerine_count:
        count += i
        answer += 1
        if count >= k:
            break
        
    
    return answer


# SOL
from collections import Counter

def solution(k, tangerine):
    answer = 0
    count = 0
    count_value = Counter(tangerine)
    count_value = sorted(count_value.values(), reverse = True)
    for i in count_value:
        count += i
        answer += 1
        if count >= k:
            break
        
    
    return answer