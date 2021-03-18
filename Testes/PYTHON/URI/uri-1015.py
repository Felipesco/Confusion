# -*- coding: utf-8 -*-
eixoX1, eixoY1 = input().split()
eixoX2, eixoY2 = input().split()
x1 = float(eixoX1)
y1 = float(eixoY1)
x2 = float(eixoX2)
y2 = float(eixoY2)
dX1 = (x2 - x1) ** 2
dY2 = (y2 - y1) ** 2
dTotal = dX1 + dY2
distancia = dTotal ** (1/2)
print('{:.4f}'.format(distancia))
