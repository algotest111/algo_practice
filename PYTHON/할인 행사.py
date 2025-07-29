# 2025. 07. 29

# PYTHON_1
def solution(want, number, discount):
    answer = 0
    fruits = []
    
    for w, n in zip(want, number):
        fruits.extend([w] * n)
    
    fruits.sort()
    
    for i in range(len(discount) - 9):
        qwer = discount[i:i+10]
        qwer.sort()
        if fruits == qwer:
            answer += 1
    return answer

def solution(want, number, discount):
    for i in range(len(discount) - 9):
        flag = False
        qwer = discount[i:i+10]
        for j in range(len(want)):
            if qwer.count(want[j]) >= number[j]:
                flag = True
            else:
                flag = False
                break
        if flag:
            answer += 1


# PYTHON_2
from collections import Counter
def solution(want, number, discount):
    answer = 0
    start = 0
    if len(set(want) - set(discount)) == 0:   
        for i in range(len(discount) - 10 + 1) : 
            end  = start + 10
            if end <= len(discount):
                a = discount[start:end]
                a_count = Counter(a)
                a_key = a_count.keys()
                a_value = a_count.values()                
                if len(set(want) - set(a_key)) == 0:
                    if sorted(a_value)   == sorted(number)  :
                        answer += 1
                        start += 1
                    else: 
                        start += 1
                        continue
                else: 
                    start += 1
                    continue
            else:
                return answer
                
    else :
        return 0
    return answer

# SOL

from collections import Counter

def solution(want, number, discount):
    answer = 0

    want_dict = dict(zip(want, number))
    
    for i in range(len(discount) - 9):  # 10일 연속
        window = discount[i:i+10]
        window_count = Counter(window)
        
        if window_count == want_dict:
            answer += 1
            
    return answer

