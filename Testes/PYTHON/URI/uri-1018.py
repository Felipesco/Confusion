valor = int(input())
print(valor)

nota100 = valor // 100
valor = valor - (nota100 * 100)

nota50 = valor // 50
valor = valor - (nota50 * 50)

nota20 = valor // 20
valor = valor - (nota20 * 20)

nota10 = valor // 10 
valor = valor - (nota10 * 10)

nota5 = valor // 5 
valor = valor - (nota5 * 5)

nota2 = valor // 2 
valor = valor - (nota2 * 2)

nota1 = valor // 1 
valor = valor - (nota1 * 1)

print('{} nota(s) de R$ 100,00'.format(nota100))
print('{} nota(s) de R$ 50,00'.format(nota50))
print('{} nota(s) de R$ 20,00'.format(nota20))
print('{} nota(s) de R$ 10,00'.format(nota10))
print('{} nota(s) de R$ 5,00'.format(nota5))
print('{} nota(s) de R$ 2,00'.format(nota2))
print('{} nota(s) de R$ 1,00'.format(nota1))
