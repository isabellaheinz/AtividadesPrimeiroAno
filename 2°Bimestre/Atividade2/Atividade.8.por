programa
{
	
	funcao inicio()
	{
		escreva("Informe o tamanho do arquivo em MB.")
		inteiro arquivo
		leia(arquivo)

		escreva("Informe a velocidade da internet em Mbps.")
		inteiro internet
		leia(internet)

		real tempoAprox = (arquivo/internet*8)/60 //Tem a multiplicação por 8 para converter bytes para bits.

		se(tempoAprox <= 0){
			escreva("O arquivo demorará menos de um minuto!")
		}
		senao{
			escreva("O tempo aproximado para download deste arquivo é de ", tempoAprox, " minutos.")
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 254; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {tempoAprox, 14, 7, 10};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */