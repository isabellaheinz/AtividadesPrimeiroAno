programa
{
	inclua biblioteca Matematica-->m


	
	funcao inicio()
	{
		//Exercicio A
		real fioTelhado = m.raiz(m.potencia(11.5,2) + m.potencia(6.3,2), 2)
		escreva("O eletrecista deverá comprar ", m.arredondar(fioTelhado, 3), " metros de fio", "\n")

		//Exercicio B
		escreva("Informe a medida do primeiro lado da casa.")
		real medida1
		leia(medida1)

		escreva("Informe a medida do segundo lado da casa.")
		real medida2
		leia(medida2)

		real fioTelhado2 = m.raiz(m.potencia(medida1,2) + m.potencia(medida2,2), 2)
		escreva("O eletrecista deverá comprar ", m.arredondar(fioTelhado2, 3), " metros de fio", "\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 271; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
