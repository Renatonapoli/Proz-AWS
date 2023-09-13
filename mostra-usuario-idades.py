import datetime

while True:
    nome_completo = input("Digite seu nome completo: ")
    
    while True:
        ano_nascimento = input("Digite o ano de nascimento (1922-2021): ")
        if ano_nascimento.isdigit():
            ano_nascimento = int(ano_nascimento)
            if 1922 <= ano_nascimento <= 2021:
                break
            else:
                print("Ano de nascimento fora do intervalo válido (1922-2021).")
        else:
            print("Ano de nascimento deve ser um número válido.")

    ano_atual = datetime.datetime.now().year
    idade = ano_atual - ano_nascimento

    print(f"Olá, {nome_completo}!")
    print(f"Em 2022, você completou ou completará {idade} anos de idade.")

    continuar = input("Deseja calcular a idade de outra pessoa? (s/n): ")
    if continuar.lower() != 's':
        break