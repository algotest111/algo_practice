# 2025. 07. 21

# PYTHON_1
def solution(cards1, cards2, goal):
    for i in range(len(goal) - 1, 0, -1):
        if goal[i] == cards1[-1]:
            cards1.pop()
        elif goal[i] == cards2[-1]:
            cards2.pop()
        else:
            return 'No'
        
    return 'Yes'

# PYTHON_2
def solution(cards1, cards2, goal):
    answer = ''
    
    for i in range(len(goal)):
        if goal[i] in cards1 :
            if cards1.index(goal[i]) == 0:
                answer = 'Yes'
                cards1.pop(0)
            else: 
                return 'No'
                
        elif goal[i] in cards2:
            if cards2.index(goal[i]) == 0:
                answer = 'Yes'
                cards2.pop(0)
            else: 
                return 'No'
        else:
            return 'No'
    return answer


## 코드 개선
def solution(cards1, cards2, goal):    
    for i in range(len(goal)):
        if len(cards1) > 0 and goal[i] == cards1[0] :
                cards1.pop(0)
        elif len(cards2) > 0 and goal[i] == cards2[0] :
                cards2.pop(0)
        else:
            return 'No'
    return 'Yes'