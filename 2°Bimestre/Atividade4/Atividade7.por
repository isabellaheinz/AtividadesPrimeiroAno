programa
{
	
	funcao inicio()
	{
		escreva("Me informe uma nota de 1 à 10: ")
		inteiro nota
		leia(nota)
		
		enquanto(nota<1 ou nota>10){
			escreva("Esta nota é invalida!")
			escreva("infome outra nota: ")
			leia(nota)
		}
		
		escreva("Muito obrigada! Nota armazenada.")
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 227; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */