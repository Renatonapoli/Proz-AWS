def calculadora(num1, num2, operacao):
    if operacao == 1:
        return num1 + num2
    elif operacao == 2:
        return num1 - num2
    elif operacao == 3:
        return num1 * num2
    elif operacao == 4:
        if num2 != 0:  # Certifique-se de que a divisão por zero não ocorra
            return num1 / num2
        else:
            return "Erro: Divisão por zero"
    else:
        return 0  # Retorna 0 se a operação não for reconhecida

# Exemplos de uso:
resultado = calculadora(5, 3, 1)  # Soma: 5 + 3
print("Resultado da Soma:", resultado)

resultado = calculadora(8, 4, 2)  # Subtração: 8 - 4
print("Resultado da Subtração:", resultado)

resultado = calculadora(6, 7, 3)  # Multiplicação: 6 * 7
print("Resultado da Multiplicação:", resultado)

resultado = calculadora(10, 2, 4)  # Divisão: 10 / 2
print("Resultado da Divisão:", resultado)

resultado = calculadora(5, 0, 4)  # Divisão por zero
print("Resultado da Divisão por Zero:", resultado)

resultado = calculadora(5, 3, 5)  # Operação não reconhecida
print("Resultado de Operação Não Reconhecida:", resultado)