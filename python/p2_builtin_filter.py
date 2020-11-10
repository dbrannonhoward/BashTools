#!/usr/bin/python2.7
def even(num):
    if num % 2 == 0:
        return True
    return False
a = [1, 2, 3, 4, 5]
print filter(even, a)
