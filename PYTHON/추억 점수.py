# 2025. 07. 21

# PYTHON_1
def solution(name, yearning, photo):
    result = []
    answer = {}
    for i in range(len(name)):
        answer[name[i]] = yearning[i]
    for pho in (photo):
        ans = 0
        for i in range(len(pho)):
            if pho[i] in name:
                ans += answer[pho[i]]
        result.append(ans)
    return result

# PYTHON_2
def solution(name, yearning, photo):
    answer = []
    score_dict = dict(zip(name, yearning))
    score = 0
    for j in photo:
        for i in j:
            if i in name:
                score += score_dict[i]
            else : 
                continue
        answer.append(score)
        score = 0
    return answer
    
    