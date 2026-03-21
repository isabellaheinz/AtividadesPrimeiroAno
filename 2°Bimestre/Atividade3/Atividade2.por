programa
{
	inclua biblioteca Matematica-->m
	
	funcao inicio()
	{
		escreva("Me informe o valor de A: ")
		real valorA
		leia(valorA)
		
		escreva("Me informe o valor de B: ")
		real valorB
		leia(valorB)
		
		escreva("Me informe o valor de C: ")
		real valorC
		leia(valorC)
		
		real delta = m.potencia(valorB, 2.0) - 4 * valorA * valorC
		real x1 = (-valorB + m.raiz(delta,2.0)) / (valorA*2)
		real x2 = (-valorB - m.raiz(delta,2.0)) / (valorA*2)

		escreva("O valor de A é ", valorA, ", o valor de B é ", valorB, " e o valor de C é ", valorC, ". \n")
		escreva("O valor de Delta é ", delta,". \n" )
		escreva("O X1 é ", x1," e o X2 é ", x2, ". \n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 590; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {x1, 20, 7, 2}-{x2, 21, 7, 2};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */