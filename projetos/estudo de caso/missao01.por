programa {
  funcao inicio() {
    //declaração de variáveis
    inteiro tentativas = 0
    cadeia senhaCorreta = "1234"
    cadeia senhaDigitada
    //entrada de dados
    //estrutura de repetição
    enquanto (tentativas < 3)
    {
      escreva("Digita a senha: ")
      leia(senhaDigitada)
      //verificação de senha
      se (senhaDigitada == senhaCorreta)
      {
        escreva("Acesso permitido!\n")
        pare
      }
      //contabilizando erros
      senao
      {
        tentativas = tentativas + 1
        escreva("Senha incorreta. Tentativa ", tentativas," de 3.\n")
      }
    }
    se (tentativas == 3)
    {
      escreva("Conta bloqueada! Muitas tentativas.\n")
    }

  }
}
