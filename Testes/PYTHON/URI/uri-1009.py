# -*- coding: utf-8 -*-
nome = str(input())
salarioFixo = float(input())
montante = float(input())
total = (montante*0.15) + salarioFixo
print('TOTAL = R$ {:.2f}'.format(total))
