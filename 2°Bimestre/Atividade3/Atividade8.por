programa
{
	
	funcao inicio()
	{
		cadeia triangulo = ""

		inteiro lado1
		escreva("Me informe o primeiro lado: ")
		leia(lado1)

		inteiro lado2
		escreva("Me informe o segundo lado: ")
		leia(lado2)

		inteiro lado3
		escreva("Me informe o terceiro lado: ")
		leia(lado3)

		se(lado1+lado2>lado3 e lado1+lado3>lado2 e lado2+lado3>lado1){
			se(lado1 == lado2 e lado2 == lado3){
				triangulo = "Equilátero"
			} senao se(lado1 != lado2 e lado1 != lado3 e lado2!= lado3){
				triangulo = "Escaleno"
			} senao se (lado1 == lado2 ou lado1 == lado3 ou lado2 == lado3){
				triangulo = "Isóceles"}

				escreva("É um triangulo ", triangulo, ".")
	}senao{
		escreva("Estas medidas não formam um triangulo!")
	}		
}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 647; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */