programa
{
	inclua biblioteca Texto-->t
	
	funcao inicio()
	{
		escreva("Me informe seu nome: ")
		cadeia nome
		leia(nome)

		escreva("Me informe sua idade: ")
		inteiro idade
		leia(idade)

		escreva("Me informe seu salario: ")
		inteiro salario
		leia(salario)

   		inteiro caracteres = t.numero_caracteres(nome) 
		
		enquanto(caracteres<=3){
			
			escreva("O nome informado é invalido! Insira outro nome com no minimo 3 caracteres: ")
			leia(nome)
			caracteres = t.numero_caracteres(nome)
			
		}
		enquanto(idade<0 ou idade>150){
			escreva("A idade informada é invalida! Insira outra idade: ")
			leia(idade)
		}
		enquanto(salario<0){
			escreva("O salário informado é invalido! Insira outra salário: ")
			leia(salario)
		}
		escreva("Tudo certo, obrigada!")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 772; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */