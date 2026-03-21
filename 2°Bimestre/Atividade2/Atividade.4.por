programa
{
	
	funcao inicio()
	{
		escreva("Me informe o tamanho da tabua, 3, 4 ou 5 ")
		inteiro tamanhoTabua
		leia(tamanhoTabua)
		tamanhoTabua = tamanhoTabua*100

		inteiro divTamanho = tamanhoTabua/45
		inteiro modTamanho = tamanhoTabua%45

		escreva("Você consiguirá ", divTamanho, " pedaços de tabua e sobrará ", modTamanho, "cm da tabua.")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 269; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */