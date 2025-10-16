programa {
  funcao inicio() {
    //declaraçao de variaveis
    cadeia senha
    cadeia fracas[3] = {"123", "admin", "senha"}
    inteiro i, fraca = 0
    //entrada de dados
    escreva("Digite uma nova senha: ")
    leia(senha)
    //verificação no vetor
    para (i = 0; i < 3; i++)
    {
      se (senha == fracas[i])
      {
        fraca = 1
      }
    }
    //resultado
    se (fraca == 1)
    {
      escreva("Seanha fraca! Escolha outra.\n")
    }
    senao
    {
      escreva("Senha aceita. Sistema protegido!\n")
    }
  }
}
