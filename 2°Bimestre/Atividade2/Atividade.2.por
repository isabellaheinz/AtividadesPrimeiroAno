programa
{
	inclua biblioteca Util-->u
	inclua biblioteca Matematica-->m
	
	
	funcao inicio()
	{
		//Exercicio A
		real venus = 0.61519726*365
		real marte = 1.8808158*365
		real jupiter = 11.862615*365
		real urano = 84.016846*365
		real netuno = 164.79132*365

		escreva("Em Venus, o periodo orbital leva ", m.arredondar(venus, 3), " dias terrestres.", "\n")
		
		u.aguarde(1000)
		escreva("Em Marte , o periodo orbital leva ", m.arredondar(marte, 3), " dias terrestres.", "\n")
		
		u.aguarde(1000)
		escreva("Em Jupiter , o periodo orbital leva ", m.arredondar(jupiter, 3), " dias terrestres.", "\n")
		
		u.aguarde(1000)
		escreva("Em Urano , o periodo orbital leva ", m.arredondar(urano, 3), " dias terrestres.", "\n")
		
		u.aguarde(1000)
		escreva("Em Netuno , o periodo orbital leva ", m.arredondar(netuno, 3), " dias terrestres.", "\n")

		//Exercicio B
		u.aguarde(1000)
		real anosMercurio = (30*365)/87 //Utilizei o valor 30, pois na atividade anteiror 977M de seg. são aprox. 30 anos.
		escreva("Uma pessoa que tem 977 milhoes de segundos aqui na Terra, em mercurio tera ", anosMercurio, " anos mercurianos.","\n")

		//Exercicio C
          u.aguarde(1000)
		escreva("Quantos anos você tem?")
		inteiro idade
		leia(idade)


		escreva("Escolha um planeta! 1- Venus, 2- Marte, 3- Jupiter, 4- Urano, 5- Netuno (Escolha o número)", "\n")
		inteiro nomePlaneta
		leia(nomePlaneta)

		se (nomePlaneta == 1){
			escreva("Você teria aproximadamente ", m.arredondar((idade*365)/venus, 3), " anos em Venus!", "\n")
		}
		se (nomePlaneta == 2){
			escreva("Você teria aproximadamente ", m.arredondar((idade*365)/marte, 3), " anos em Marte!", "\n")
		}
		se (nomePlaneta == 3){
			escreva("Você teria aproximadamente ", m.arredondar((idade*365)/jupiter, 3), " anos em Jupiter!", "\n")
		}
		se (nomePlaneta == 4){
			escreva("Você teria aproximadamente ", m.arredondar((idade*365)/urano, 3), " anos em Urano!", "\n")
		}
		se (nomePlaneta == 5){
			escreva("Você teria aproximadamente ",m.arredondar((idade*365)/netuno, 3), " anos em Netuno!", "\n")
		}

		//Exercicio D
		escreva("Quantos anos você tem?")
		inteiro idade2
		leia(idade2)

		escreva("Você sera mais jovem em netuno, com ",m.arredondar((idade2*365)/netuno, 3), " anos.", "\n" )
	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2217; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
