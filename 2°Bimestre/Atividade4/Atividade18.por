programa
{
	
	funcao inicio()
	{
		escreva("Me informe um número para eu te informar o fatorial dele: ")
		inteiro numero
		leia(numero)

		inteiro fatorial = 1
		para(inteiro i=1; i <= numero; i++){
			
			fatorial = fatorial*i
		
		}
		escreva("O fatorial de ", numero, ", é ", fatorial)
	
	}
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 280; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {numero, 7, 10, 6}-{fatorial, 10, 10, 8};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */