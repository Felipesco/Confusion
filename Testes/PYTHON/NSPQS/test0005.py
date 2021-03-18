from math import sqrt, ceil

numero = int(input('Digite um numero: '))

raiz = sqrt(numero) #raiz do numero digitado

print('A raiz de {} é igual a {}'.format(numero, ceil(raiz))) #math.ceil(ou só ceil) arredonda a raiz para cima 
