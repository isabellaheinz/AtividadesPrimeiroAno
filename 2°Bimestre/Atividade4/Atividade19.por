programa
{
	inclua biblioteca Matematica --> m
	
	funcao inicio()
	{
		escreva("Me informe quantos números tem o conjunto: ")
		inteiro conjunto
		leia(conjunto)


		inteiro maior, menor, soma
		soma = 0
		
		escreva("Me informe o primeiro numero: ")
		inteiro num
		leia(num)

		menor = num
		maior = num
		soma = num
		

		para(inteiro i=1; i < conjunto ; i++){
			
			escreva("Informe outro número: ")
			leia(num)
			
			se (num < menor){
				menor = num
			}
			 se(num > maior){
			 	maior = num
			 }
			
			soma += num
			
		}
	
	escreva("O maior número é ", maior, ", o menor número é ", menor," e a soma de todos eles é ", soma)
	
	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 637; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */