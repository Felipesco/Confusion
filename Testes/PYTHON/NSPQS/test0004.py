n1 = float(input('Digite um Valor: '))
n2 = float(input('Digite outro Valor: '))

soma = n1 + n2
subt = n1 - n2
mult = n1 * n2
divi = n1 / n2
restodiv = n1 % n2
potenciax = n1 ** n2
potenciay = n2 ** n1
raiz1 = n1 ** (1/2)
raiz2 = n2 ** (1/2)

print(' A soma dos Valores é: {}'.format(soma))
print(' A subtração dos valores é: {}'.format(subt))
print(' A divisão dos valores é {}, e o resto em números reais é: {}'.format(divi, restodiv))
print(' A potência de base {} com o expoente {} é: {:.3f}'.format(n1, n2, potenciax), end=' >>>>')
print(' O inverso (base: {}; expoente: {}) é: {:.3f}'.format(n2, n1, potenciay))
print(' A raiz de {} é igual a {:.3f}. E a raiz de {} é igual a {:.3f}.'.format(n1, raiz1, n2, raiz2))
