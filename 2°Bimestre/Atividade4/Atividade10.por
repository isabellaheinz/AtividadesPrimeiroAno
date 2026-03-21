programa
{
	
	funcao inicio()
	{
		inteiro paisA = 80000
		inteiro paisB = 200000

		
		inteiro anos = 0

		enquanto(paisA<paisB){
			paisA += paisA*0.03
			paisB += paisB*0.015

			anos++
		}
	
	escreva("Demorarão ", anos, " anos para o país A ter uma população igual ao país B")
	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 282; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {paisA, 6, 10, 5}-{paisB, 7, 10, 5}-{anos, 10, 10, 4};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */