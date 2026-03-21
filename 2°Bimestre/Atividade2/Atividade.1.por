programa
{
	inclua biblioteca Util-->u

	
	funcao inicio()
	{

		
		escreva("Quantos dias tem o seu ano?")
		inteiro ano
		leia(ano)

		inteiro horasAno = ano*24
		escreva("Seu ano possui ", horasAno, " horas", "\n")

		u.aguarde(1000)

		inteiro minDecada = (horasAno*60)*10
		escreva("Em uma decada, temos aproximadamente ", minDecada, "minutos",  "\n")

		u.aguarde(1000)

		inteiro idadeSec = (((15*365)*24)*60)*60
		escreva("Considerando, que tenho 15 anos, tenho ", idadeSec, " segundos já vividos.",  "\n")
		
		u.aguarde(1000)

		inteiro chocoVida = (20*12)*80
		escreva("Considerando que como 20 chocolates em um mês, e espero viver pelo menos 80 anos, nesse periodo irei comer ", chocoVida, " chocolates.", "\n")

		u.aguarde(1000)

		inteiro idadeAno = (((977000000/60)/60)/24)/365
		escreva("Uma pessoa que ja viveu 977 milhoes de segundos, tem aproximadamente ", idadeAno, " anos.", "\n")

		u.aguarde(1000)

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 878; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
