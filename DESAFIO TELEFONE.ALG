Algoritmo "Desafio Telefone"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Nelio Alves
// Descrição   : desafio final modulo
// Autor(a)    : Davi Mendes
// Data atual  : 31/01/2024
Var

//declaracao vetor


nome : vetor [0..9] de caractere
telefone : vetor [0..9] de caractere
tip : vetor [0..9] de inteiro
minutos : vetor [0..9] de inteiro
conta : vetor [0..9]  de real

// matriz

assin : vetor [0..2,0..1] de real
i,j, l, c : inteiro

// variaveis
qtdP : inteiro



Inicio




  escreva("Informe a quantidade de clientes: ")
  leia(qtdP)
  
  //condicao para verificar se esta correto a entrada do usuario
            enquanto (qtdP <= 0 ) ou (qtdP > 10) faca
                     escreval
                     escreval("Escolha entre 1 a 10!!!")
                     escreval("DIGITE NOVAMENTE!")
                     escreva("Informe a quantidade de clientes: ")
                     leia(qtdP)
            fimenquanto
   //jogando o valor para a matriz de forma manual

     assin[0,0] <- 25.5
     assin[0,1] <- 0.10
     assin[1,0] <- 35.0
     assin[1,1] <- 0.12
     assin[2,0] <- 60.0
     assin[2,1] <- 0.15

    //PARA onde armazenara os dados do usuario
    
            para i de 0 ate qtdP - 1 faca
            
                 escreval("Dados do ", i+1 , "o. Cliente:")
                 escreva("Nome: ")
                 leia(nome[i])
                 escreva("Telefone: ")
                 leia(telefone[i])
                 escreva("Tipo: ")
                 leia(tip[i])
                 
   //condicao para verificar se esta correto a entrada do usuario
   
                  enquanto (tip[i] < 0 ) ou (tip[i] > 2) faca
                     escreval
                     escreval("Escolha entre 0 a 2!!!")
                     escreval("DIGITE NOVAMENTE!")
                     escreva("Tipo: ")
                     leia(tip[i])
                  fimenquanto
                 
                 escreva("Minutos: ")
                 leia(minutos[i])
                 escreval
  //escolha para fazer o calculo da conta final
  
                 escolha tip[i]

                         caso 0
                              se (minutos[i] <= 90) entao
                                 conta[i] <- assin[0,0]
                              senao

                                 conta[i] <- assin[0,0] + ((minutos[i] - 90 ) *  assin[0,1])
                              fimse
                         
                         caso 1
                              se (minutos[i] <= 90) entao
                                 conta[i] <- assin[1,0]
                              senao

                                 conta[i] <- assin[1,0] + ((minutos[i] - 90 ) *  assin[1,1])
                              fimse
                         
                         caso 2
                               se (minutos[i] <= 90) entao
                                 conta[i] <- assin[2,0]
                               senao

                                 conta[i] <- assin[2,0] + ((minutos[i] - 90 ) *  assin[2,1])
                              fimse
                 
                 fimescolha
                 
            fimpara
 //impressao da tabela de preço e valor excedente
 
            escreval("Informe o preco basico e execendente de cada tipo de conta:")
            
            para i de 0 ate 2 faca
            escreval("Tipo ", i  , ":")
                 para j de 0 ate 1 faca

                      escreval(assin[i,j]:2:2)
                 fimpara

            fimpara
            
 //impressao do relatorio final
 
            escreval("RELATÓRIO DOS CLIENTES:")
            escreval
            
            para i de 0 ate qtdP - 1 faca
            escreval(" ", nome[i], ", " , telefone[i], ", Tipo" , tip[i], ", Minutos:" , minutos[i], ", Conta = R$" , conta[i]:3:2 )
            fimpara

Fimalgoritmo