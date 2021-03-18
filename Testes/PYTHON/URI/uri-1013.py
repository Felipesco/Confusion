# -*- coding: utf-8 -*-
n1, n2, n3 = input().split()
a = int(n1)
b = int(n2)
c = int(n3)
maiorAB = (a+b+abs(a-b))/2
if maiorAB > c:
    print('{:.0f} eh o maior'.format(maiorAB))
else:
    print('{:.0f} eh o maior'.format(c))
