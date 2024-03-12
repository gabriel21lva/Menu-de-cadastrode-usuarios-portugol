Algoritmo "MENU OZZY"



var
   indice, numero, quantidade, escolhido, Q, acumulador: inteiro
   usuario:caractere
   usuarios: vetor[1..10] de caractere
   idade:inteiro
   idades:vetor[1..100] de inteiro
   UsuaDes, Pesquisa: caractere
   indiceEncontrado:inteiro
   id:inteiro
   exusu:caractere
   indiceexcluir:inteiro




funcao busca(pes:caractere):inteiro
var
   linha:inteiro
   indiceRetornar:inteiro
inicio
   para linha de 1 ate 10 faca
      se (pes = usuarios[linha]) entao
         indiceRetornar <- linha
         Pesquisa <- usuarios[linha]
         id <- idades[linha]
         interrompa
      fimse

   fimpara
   Retorne indiceRetornar
fimfuncao


funcao remover(ex: caractere): inteiro
var
   idremover: inteiro
   indiceretornar:inteiro
inicio
   para indice de 1 ate 10 faca
      se (ex = usuarios[indice]) entao
         usuarios[indice] <- ""
         se (ex = usuario) entao
            usuario <- ""
            idades[indice] <- Q
            idade <- Q
            escreval("Usuario Removido!!")
            interrompa
         fimse
      fimse
   fimpara
   retorne indiceretornar
fimfuncao



Inicio

   acumulador <- 0
   escreval("                 *BEM VINDO A OZZY*           ")
   escreval("Cadastre-se:")
   escreval("Digite o numero exato de cadastros:")
   leia(numero)
   indice <- 1
   enquanto indice <= numero faca
      escreval("Cadastre um novo usuario:")
      leia(usuario)
      escreval("Infome a Idade")
      leia(idade)
      usuarios[indice]<- usuario
      idades[indice] <- idade
      acumulador <- acumulador + 1
      escreval("O " + usuario + " foi cadastrado com sucesso!!")
      indice <- indice + 1
   fimenquanto

   se acumulador >= numero entao
      limpatela

      escreval("Todos usuarios cadastrados!!")
      escreval("Deseja acessar o menu?")
      escreval("Digite 1 para continuar ou 5 para sair:")
      leia(escolhido)
      se escolhido = 1 entao
         repita
            limpatela
            escreval("                            MENU               ")
            escreval("    ")
            escreval("-> Digite 1 para cadastrar um novo usuario:")
            escreval("-> Digite 2 para listar todos os usuarios cadastrados:")
            escreval("-> Digite 3 para buscar usuario:")
            escreval("-> Digite 4 para excluir usuario:")
            escreval("-> Digite 5 para sair:")
            leia(escolhido)
            escolha (escolhido)

            caso =1
               limpatela

               escreval("Cadastrar novo usuario:")
               leia(usuario)
               escreval("Informe a Idade:")
               leia(idade)
               usuarios[indice] <- usuario
               idades[indice] <- idade
               acumulador <- acumulador + 1
               escreval("O " + usuario + " foi cadastrado com sucesso!!")
               indice <- indice + 1
            caso = 2
               limpatela
               escreval("Lista de todos os usuarios cadastrados:")
               escreval(" ")
               para indice <-1 ate acumulador faca
                  escreval("Usuario", "/" , "Idade",)
                  escreval(usuarios[indice]," / " ,idades[indice],"  ", "anos")


               fimpara
               escreval(" o total de pessoas que foram cadastradas foram:")
               escreva(acumulador)

            caso = 3
               limpatela
               escreval("   ")
               escreval("Qual o usuario que deseja procurar?")
               leia (UsuaDes)
               indiceEncontrado <- busca(UsuaDes)
               limpatela
               se indiceEncontrado >= 1 entao
                  escreval ("Usuario encontrado, ", Pesquisa,"/", id)
                  escreval("  ")
               senao
                  escreval(" ")
                  escreval("Usuario nao encontrado")
               fimse

            caso = 4
               limpatela
               escreval("Qual usuario deseja excluir?")
               leia(exusu)
               indiceexcluir <- remover(exusu)




            caso  = 5
               escreval("Saindo do programa...")
               interrompa
            senao
               escreval("Opïção Invslida")
            fimescolha
         ate escolhido = 5
         Q := Q + 1

      fimse
   fimse



Fimalgoritmo