programa {
  funcao inicio() {
    // ===== Declaração de variáveis =====
        cadeia senhaCadastrada          // Vai guardar a senha criada pelo usuário
        cadeia senhaDigitada            // Para digitar a senha no login
        inteiro tentativas = 0          // Contador de tentativas de login
        inteiro falhas = 0              // Contador de falhas para detectar ataque
        inteiro limiteFalhas = 5        // Limite de falhas antes de bloquear o sistema

        cadeia senhasFracas[3] = {"123", "admin", "senha"}  // Lista de senhas fracas proibidas
        inteiro i                       // Variável auxiliar para laços de repetição
        inteiro senhaFraca              // Flag para indicar se a senha é fraca (1) ou segura (0)

        // ===== Etapa 1: Cadastro de senha =====
        faca
        {
            senhaFraca = 0  // Reinicia flag a cada tentativa

            escreva("Crie uma nova senha: ")
            leia(senhaCadastrada)

            // Verifica se a senha digitada está na lista de senhas fracas
            para (i = 0; i < 3; i++)
            {
                se (senhaCadastrada == senhasFracas[i])
                {
                    senhaFraca = 1  // Marca como fraca
                }
            }

            // Mensagem se a senha for fraca
            se (senhaFraca == 1)
            {
                escreva("Senha muito fraca! Tente outra.\n\n")
            }

        } enquanto (senhaFraca == 1)  // Repete enquanto a senha for fraca

        escreva("Senha cadastrada com sucesso!\n\n")

        // ===== Etapa 2: Login com limite de tentativas =====
        enquanto (tentativas < 3)
        {
            escreva("Digite sua senha para login: ")
            leia(senhaDigitada)

            // Verifica se a senha digitada está correta
            se (senhaDigitada == senhaCadastrada)
            {
                escreva("✅ Acesso permitido!\n\n")
                pare  // Sai do loop de login
            }
            senao
            {
                tentativas = tentativas + 1  // Conta tentativa de login
                falhas = falhas + 1          // Conta falha para monitorar ataques

                escreva("❌ Senha incorreta! Tentativa ", tentativas, " de 3.\n\n")
            }
        }

        // Se atingiu 3 tentativas e não acertou
        se (tentativas == 3)
        {
            escreva("⛔ Conta bloqueada! Muitas tentativas erradas.\n")
        }

        // ===== Etapa 3: Segurança contra ataques de força bruta =====
        se (falhas >= limiteFalhas)
        {
            escreva("\n🚨 ALERTA DE SEGURANÇA! Muitas falhas detectadas.\n")
            escreva("O sistema foi bloqueado por segurança.\n")
            retorne  // Encerra o programa imediatamente
        }
  }
}
