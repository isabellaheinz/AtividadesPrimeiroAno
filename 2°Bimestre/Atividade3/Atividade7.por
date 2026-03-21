programa
{
	inclua biblioteca Matematica-->m
	
	funcao inicio()
	{
		escreva("Me informe o primeiro número:")
		inteiro numero1
		leia(numero1)
		
		escreva("Me informe o segundo número:")
		inteiro numero2
		leia(numero2)

		escreva("Me informe o terceiro número:")
		inteiro numero3
		leia(numero3)

		inteiro maior, meio, menor
		se(numero1>numero2 e numero1>numero3){
			maior = numero1
			meio = numero2
			menor = numero3
			
		} senao se (numero3>numero2){
			maior = numero3
			meio = numero2
			menor = numero1
		} senao {
			maior = numero2
			meio = numero1
			menor = numero3
		}
		se(meio <= menor){
			inteiro aux = meio
			meio = menor
			menor = aux
		}
		escreva("A ordem é: ", maior, meio, menor)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 632; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {numero1, 8, 10, 7}-{numero2, 12, 10, 7}-{numero3, 16, 10, 7}-{maior, 19, 10, 5}-{meio, 19, 17, 4}-{menor, 19, 23, 5}-{aux, 35, 11, 3};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */