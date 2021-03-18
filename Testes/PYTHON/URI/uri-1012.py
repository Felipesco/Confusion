# -*- coding: utf-8 -*-
n1, n2, n3 = input().split()
a = float(n1)
b = float(n2)
c = float(n3)

triangulo = (a*c)/2
circulo = (c**2) * 3.14159
trapezio = ((a + b) * c) / 2
quadrado = b*b
retangulo = a * b

print('TRIANGULO: {:.3f}'.format(triangulo))
print('CIRCULO: {:.3f}'.format(circulo))
print('TRAPEZIO: {:.3f}'.format(trapezio))
print('QUADRADO: {:.3f}'.format(quadrado))
print('RETANGULO: {:.3f}'.format(retangulo))
