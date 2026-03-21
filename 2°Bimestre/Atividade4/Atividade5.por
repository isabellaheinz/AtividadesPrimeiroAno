programa
{
	
	funcao inicio()
	{
		escreva("Me informe um número! ")
		inteiro numero
		leia(numero)

		numero++
		para(inteiro i=1; i < numero; i++){
			escreva(i, "\n")
		}

		escreva("\n\n\n")

		numero--
		para(inteiro i=numero; i>0; i--){
			escreva(i, "\n")
		}

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 213; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */