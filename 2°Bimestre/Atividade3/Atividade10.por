programa
{
	
	funcao inicio()
	{
		escreva("Escreva a velocidade do carro: ")
		inteiro velocidade
		leia(velocidade)
		
		se(velocidade>80){
			escreva("Você ultrapassou o limite de velocidade da via!", "\n")
			escreva("Por conta disto, será multado!", "\n")

			inteiro excessoVel = velocidade-80
			inteiro multa = excessoVel*7

			escreva("Você deverá pagar R$", multa, " de multa.")
			
		} senao {
			escreva("Você estava dentro do limite! Continue assim.")
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 468; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */