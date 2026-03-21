programa
{
	
	funcao inicio()
	{
	//Parte1 da questão
	VogalOuConsoante()

	//Parte2 da questão
		escreva("Me informe um ano: ")
		inteiro ano
		leia(ano)

		se(ano==0 ou ano<0){
			ano = 2025
		} 
		
		se(ano%4==0){
			
			se(ano%100==0){
				
				se(ano%400==0){
					anoBissexto()
				} senao {
				anoNaoBissexto()
			}
			
			} senao {
				anoBissexto()
			}
			
		} senao {
			anoNaoBissexto()
		}
		
	}
	


	funcao VogalOuConsoante(){
		// Parte1 da questão
	
		escreva("Escreva uma letra: ")
		cadeia letra
		leia(letra)
		
		inteiro vogal = 0
		
		
		se(letra == "A" ou letra == "a"){
			vogal = 1
		
		} senao se(letra == "E" ou letra == "e"){
			vogal = 2
		
		} senao se(letra == "I" ou letra == "i"){
			vogal = 3
			
		} senao se(letra == "O" ou letra == "o"){
			vogal = 4
			
		} senao se(letra == "U" ou letra == "u"){
			vogal = 5
		} senao {
			vogal = 6
		}
	
		
		se (vogal != 6 ){
	 		escreva("A letra informada é uma vogal!","\n" )
	 		escreva("------------------------------", "\n")
		}
 		senao se (vogal==6){
			escreva("A letra informada é uma consoante!","\n")
			escreva("----------------------------------", "\n")
	} 
}
	funcao anoBissexto(){
		escreva("O ano é bissexto, ele tem 366 dias!")
} 
	funcao anoNaoBissexto(){
		escreva("O ano não é bissexto, ele tem 365 dias!")
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