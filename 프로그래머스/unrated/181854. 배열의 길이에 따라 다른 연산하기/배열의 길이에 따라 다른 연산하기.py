def solution(arr, n):
    if len(arr)%2 == 0:
        for i in range(len(arr)+1):
            if i%2 == 1:
                arr[i] += n
        return arr
    else:
        for i in range(len(arr)+1):
            if i%2 == 0:
                arr[i]+= n
        return arr