programa {
  funcao inicio() {
    inteiro votos[4] = {0, 0, 0, 0}
    inteiro voto
    logico votacao = verdadeiro

    enquanto (votacao == verdadeiro) {
      escreva("Digite um número para votar: (-1 para sair!)")
      escreva("\n 0 - Aldair")
      escreva("\n 1 - Alcemar")
      escreva("\n 2 - Euclides")
      escreva("\n 3 - Brancos e Nulos")
      escreva("\n Opção: ")
      leia(voto)

      se (voto == -1) {
        votacao = falso 
      } 
      senao se ((voto >= 0) e (voto <= 3)) {
        votos[voto] += 1
        escreva("Voto registrado!\n")
      } 
      senao {
        escreva("Voto inválido!\n")
      }
    }

    escreva("Resultados da votação:")
    para (inteiro i = 0; i < 4; i++) {
      se (i == 3) {
        escreva("\nBrancos e Nulos:", votos[i])
      } 
      
      senao {
        escreva("\nCandidato ", i, ": ", votos[i], " votos")
      }
    }
    
    inteiro vencedor = 0
    para (inteiro v = 1; v < 3; v++) {
      se (votos[v] > votos[vencedor]) {
        vencedor = v
      }
    }

    se (vencedor == 0) {
      escreva("\nO candidato Aldair venceu a eleição.")
    }

    senao se (vencedor == 1) {
      escreva("\nO candidato Alcemar venceu a eleição.")
    }

    senao se (vencedor == 2) {
      escreva("\nO candidato Euclides venceu a eleição.")
    }

    senao {
      escreva("\nA eleição terminou em empate ou com a maioria de votos em branco e nulos.")
    }
  }
}
