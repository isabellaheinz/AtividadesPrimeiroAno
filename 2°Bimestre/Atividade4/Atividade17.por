programa
{
	
	funcao inicio()
	{
		//Exercicio A
		inteiro num1 = 0
		inteiro num2 = 1

		
		escreva("A sequencia de fibonacci até o valor ser maior que 500 é: ", "\n")

		inteiro atual = 0
		enquanto(atual <= 500){
		
		atual = num1 + num2 		
			
		escreva(atual, "\n")

		num2 = num1		
		num1 = atual 
		

		}
		
		//Exercicio B

		escreva("Diga um número para gerar a sequência de Fibonnaci até ser maior que ele: ")
		inteiro parametro
		leia(parametro)

		atual = 0
		num1 = 0
		num2 = 1
		
		enquanto(atual <= parametro){
		
		atual = num1 + num2 		
			
		escreva(atual, "\n")

		num2 = num1		
		num1 = atual 
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 214; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */