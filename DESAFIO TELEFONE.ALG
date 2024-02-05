Algoritmo "Desafio Telefone"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Nelio Alves
// Descrição   : desafio final modulo
// Autor(a)    : Davi Mendes
// Data atual  : 31/01/2024
Var

//declaracao vetor


nome : vetor [0..9] de caractere
telefone : vetor [0..9] de inteiro
tip : vetor [0..9] de inteiro
minutos : vetor [0..9] de inteiro
conta : vetor [0..9]  de real

// matriz

assin : vetor [0..2,0..1] de real
i,j, l, c : inteiro

// variaveis
qtdP : inteiro



Inicio

 assin[0,0] <- 25.5
 assin[0,1] <- 0.10
 assin[1,0] <- 35.0
 assin[1,1] <- 0.12
 assin[2,0] <- 60.0
 assin[2,1] <- 0.15

// assin[1,1] <- 25.5
// assin[1,2] <- 0.10
// assin[2,1] <- 35.0
// assin[2,2] <- 0.12
// assin[3,1] <- 60.0
// assin[3,2] <- 0.15
 
 para i de 0 ate 2 faca
      para j de 0 ate 2 faca
      escreval(assin[i,j])
      fimpara
 fimpara

  escreva("Informe a quantidade de clientes: ")
  leia(qtdP)
  
  //condicao para verificar se esta correto a entrada do usuario
            enquanto (qtdP < 0 ) ou (qtdP >= 10) faca
                     escreval
                     escreval("Escolha entre 1 a 10!!!")
                     escreval("DIGITE NOVAMENTE!")
                     escreva("Informe a quantidade de clientes: ")
                     leia(qtdP)
            fimenquanto
            
            
  
Fimalgoritmo