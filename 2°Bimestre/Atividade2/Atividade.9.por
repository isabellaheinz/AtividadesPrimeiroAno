programa
{
	inclua biblioteca Matematica-->m
	
	funcao inicio()
	{
		escreva("Informe a area em metros quadrados!")
		inteiro area
		leia(area)
		
		inteiro tintaNeces = area/3

		 se(tintaNeces < 18){
		 	escreva("Para pintar tudo, você usará menos de 1 lata de tinta, custando no total R$480.00","\n")
			escreva("Sobrará ", 18-tintaNeces, " litros de tinta!")

		} senao {
		 	inteiro latasTintas = (tintaNeces/18)
		 	real valorTotal = latasTintas*480.00

		se(tintaNeces%18 != 0.00){
			latasTintas++ } //Utilizado para somar mais uma lata de tinta, pois se a pessoa utlizia, por exemplo,  19 litros, ela ja precisará de duas latas.
			
		 	escreva("Para pintar tudo, você usará ", m.arredondar(latasTintas, 3), " latas de tinta, custando no total R$",m.arredondar(valorTotal, 3) , ".","\n")

			
	}
}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 815; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {area, 8, 10, 4}-{tintaNeces, 11, 10, 10}-{latasTintas, 18, 12, 11};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
