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