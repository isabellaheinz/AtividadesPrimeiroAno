programa
{
	real total = 0
	
	funcao inicio()
	{
		inteiro opcao = -1

		menu()

		enquanto(opcao != 0){
			
			
			escreva("Informe uma opção!")
			leia(opcao)

			escolha(opcao){

				caso 100: 
					escreva("Você selecionou Cachorro Quente! ", "\n")
					calcularSubtotal(5.00)
					escreva("O total é: R$ ", total, ". ", "\n")
					
					pare

				caso 101: 
					escreva("Você selecionou Bauru! ", "\n")
					calcularSubtotal(2.80)
					escreva("O total é: R$ ", total, ". ", "\n")
					pare

				caso 102: 
					escreva("Você selecionou Bauru c/ ovo! ", "\n")
					calcularSubtotal(3.80)
					escreva("O total é: R$ ", total, ". ", "\n")
					pare

				caso 103: 
					escreva("Você selecionou Hamburger! ", "\n")
					calcularSubtotal(9.00)
					escreva("O total é: R$ ", total, ". ", "\n")
					pare

				caso 104: 
					escreva("Você selecionou Cheeseburger! ", "\n")
					calcularSubtotal(11.00)
					escreva("O total é: R$ ", total, ". ", "\n")
					pare

				caso 105: 
					escreva("Você selecionou refrigerante! ", "\n")
					calcularSubtotal(3.00)
					escreva("O total é: R$ ", total, ". ", "\n")
					pare

				caso 106: 
					escreva("Você selecionou Semente dos Deuses! ", "\n")
					calcularSubtotal(1000.00)
					escreva("O total é: R$ ", total, ". ", "\n")
					pare

				caso 0: 
					escreva("Você selecionou Sair! Obrigada por visitar nossa Lanchonete.", "\n")
					pare

				caso contrario:
			 		escreva("Você selecionou uma opção invalida!", "\n")
			 		pare
		}//fim do escolha
			
	}//fim do enquanto
	
		
		
		}// fim do inicio

	funcao menu(){
		
		escreva("*****************************************************", "\n")
		escreva("*    Lanchonete do IFPR - Campus Foz do Iguaçu      *", "\n")
		escreva("*****************************************************", "\n")
		escreva("*  Código             Opções           Valor        *", "\n")
		escreva("*   100          Cachorro Quente      R$ 5.00       *", "\n")
		escreva("*   101               Bauru           R$ 2.60       *", "\n")
		escreva("*   102            Bauru c/ ovo       R$ 3.80       *", "\n")
		escreva("*   103              Hamburger        R$ 9.00       *", "\n")
		escreva("*   104            Cheeseburger       R$ 11.00      *", "\n")
		escreva("*   105            Refrigerante       R$ 3.00       *", "\n")
		escreva("*   106         Semente dos Deuses    R$ 1000.00    *", "\n")
		escreva("*    0                 Sair                         *", "\n")
		escreva("*****************************************************", "\n")
		

	
	}// fim do menu

	funcao calcularSubtotal(real valorProduto){
		
		inteiro unidades			
		escreva("Quantas unidades?")
		leia(unidades)

		total += unidades * valorProduto
					
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2599; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */