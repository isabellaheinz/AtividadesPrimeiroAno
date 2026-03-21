programa
{
	
	funcao inicio()
	{
		escreva("Quantos km percorreu o carro?")
		real km
		leia(km)

		escreva("Por quantos dias o carro foi alugado?")
		inteiro dias
		leia(dias)

		inteiro diasPreco = dias*60
		real kmPreco = km*0.15
		real precoTotal = diasPreco + kmPreco

		escreva("Você percorreu ", km," km, totalizando R$", kmPreco, ".  \n")
		escreva("Você utilizou o carro por  ", dias," dias, totalizando R$", diasPreco, ".  \n")
		escreva("Ao total, você deverá pagar R$", precoTotal,".  \n")
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 498; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */