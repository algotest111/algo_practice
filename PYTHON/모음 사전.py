# 2025. 07. 29

# PYTHON_1


# PYTHON_2
from itertools

def solution(word):
    combin = ['A', 'E', 'I', 'O', 'U']
    answer = 0
    all_words = []
    for i in range(1,6):
        comb = list(product(combin, repeat = i))
        for j in comb:
            all_words.append(''.join(j))
    a = sorted(all_words)
    answer = a.index(word)
    return answer + 1