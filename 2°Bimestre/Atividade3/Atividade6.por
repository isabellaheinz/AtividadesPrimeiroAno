programa
{
	
	funcao inicio()
	{
		escreva("Me informe o primeiro número:")
		inteiro numero1
		leia(numero1)
		
		escreva("Me informe o segundo número:")
		inteiro numero2
		leia(numero2)

		escreva("Me informe o terceiro número:")
		inteiro numero3
		leia(numero3)
		
		escreva("Me informe o quarto número:")
		inteiro numero4
		leia(numero4)

		se(numero1>numero2 e numero1>numero3 e numero1>numero4){
			escreva("O primeiro número é maior! Ele é o ", numero1)
		
		} senao se(numero2>numero1 e numero2>numero3 e numero2>numero4){
			escreva("O segundo número é maior! Ele é o ", numero2)

		} senao se(numero3>numero1 e numero3>numero2 e numero3>numero4){
			escreva("O terceiro número é maior! Ele é o ", numero3)

		} senao se(numero4>numero1 e numero4>numero2 e numero4>numero3){
			escreva("O quarto número é maior! Ele é o ", numero4)
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 852; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */