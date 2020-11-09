#!/usr/bin/python3.7
def plus_one(num):
    return num + 1
a = [1, 3, 5, 7]
b = map(plus_one, a)
print(list(b))
