

algoritmo "VerificacaoSenha"
var
   nome, senha, confirmarSenha: caractere
   tentativas, maxTentativas, tentativasRestantes: inteiro

inicio
   // Definindo o n�mero m�ximo de tentativas
   maxTentativas <- 3
   tentativas <- 0

   // Solicitando nome e senha ao usu�rio
   escreva("Digite seu nome: ")
   leia(nome)
   escreva("Digite uma senha: ")
   leia(senha)

   // Loop para verificar senha com at� 3 tentativas
   enquanto (tentativas < maxTentativas) faca
      escreva("Ola ", nome, ", digite sua senha criada: ")
      leia(confirmarSenha)

      // Verificando se a senha est� correta
      se (confirmarSenha = senha) entao
         escreval("Senha correta. Acesso liberado!")
         interrompa // Sai do loop se a senha estiver correta
      senao
         tentativas <- tentativas + 1

         // Verifica se chegou � �ltima tentativa
         se (tentativas >= maxTentativas) entao
            escreval("Senha incorreta! Acesso bloqueado.")
         senao
            tentativasRestantes <- maxTentativas - tentativas
            escreval("Senha incorreta! Voce ainda tem ", tentativasRestantes, " tentativas.")
         fimse
      fimse
   fimenquanto

fimalgoritmo