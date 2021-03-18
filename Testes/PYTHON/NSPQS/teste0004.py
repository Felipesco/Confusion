n1 = int(input('Digite um Valor: '))
n2 = int(input('Digite outro Valor: '))
soma = n1 + n2
subt = n1 - n2
mult = n1 * n2
divi = n1 / n2
restodiv = n1 % n2
potenciax = n1 ** n2
potenciay = n2 ** n1
print(' A soma dos Valores é: {}'.format(soma))
print(' A subtração dos valores é: {}'.format(subt))
print(' A divisão dos valores é {}, e o resto em números reais é: {}'.format(divi, restodiv))
print(' A potência de base {} com o expoente {} é: {}'.format(n1, n2, potenciax), end=' >>>>')
print(' O inverso (base: {}; expoente: {}) é: {}'.format(n2, n1, potenciay))
