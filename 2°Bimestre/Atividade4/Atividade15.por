programa
{
	
	funcao inicio()
	{
		escreva("Me informe a base da potência: ")
		inteiro base
		leia(base)
		
		escreva("Me informe o expoente da potência: ")
		inteiro expoente
		leia(expoente)

		inteiro resultado = base
		para(inteiro i=1; i < expoente; i++){
		  resultado = resultado*base
		}
	}
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 246; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {base, 7, 10, 4}-{expoente, 11, 10, 8}-{resultado, 14, 10, 9}-{i, 15, 15, 1};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */