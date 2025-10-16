programa {
  funcao inicio() {
    //declaração de variaveis
    inteiro falhas = 0
    inteiro limite = 5
    inteiro i
    //simulacao de 10 tentativas
    para (i = 1; i <= 10; i++)
    {
      escreva("Tentativa ", i, ": falhou\n")
      falhas = falhas + 1
      se (falhas >= limite)
      {
        escreva("ALERTA: Possível ataque de força bruta!\n")
        pare
      }
    }
  }
}
