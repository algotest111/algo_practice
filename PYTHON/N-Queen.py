from itertools import *
import numpy as np

def solution(n):
    answer = 0
    comb = list(range(1,n+1))
    for i in range(1, n+1):
        gps = list(product(comb, repeat = 2))
        n_gps = gps[n:]
        q_count = 0
        location = (1,i)
        i_sum = location[0] + location[1]
        i_diff = location[0] - location[1]
        print(location)
        for j in n_gps:
            print(j)
            print(n_gps)
            if 1 in j or i in j:
                n_gps.remove(j)
            if j in n_gps and (sum(j) == i_sum or j[0]-j[1] == i_diff):
                n_gps.remove(j)
            if len(gps) > 0 :
                q_count += 1
            else:
                break

        if q_count == n :
            answer += 1
                
    return answer