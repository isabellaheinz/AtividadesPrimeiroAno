programa
{
	
	funcao inicio()
	{
		escreva("Informe a primeira nota (0 à 100): ")
		real nota1
		leia(nota1)

		escreva("Informe a segunda nota(0 à 100): ")
		real nota2
		leia(nota2)

		real media = (nota1 + nota2)/2

		se(media==100){
			escreva("Aprovado com Distinção.")
	
		} senao se(media>=70) {
			escreva("Aprovado.")
			
		} senao {
			escreva("Reprovado.")
		}

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 240; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */