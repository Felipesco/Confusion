import sys
from pip._vendor.distlib.compat import raw_input

while True:
    linha = raw_input()

    if linha in '0':
        break

    for x in range(0, len(linha)):
        c = linha[x:x + 1]
        cn = ord(c)
        cn -= 3
        if cn < 65:
            cn += 26
        sys.stdout.write(chr(cn))

    print("")

sys.exit()
