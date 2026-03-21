<?php

$resetar = "\033[0m";
$azul = "\033[34m";
$fundoAzul = "\033[44m";
$vermelho = "\033[31m";
$emojiGift = "\u{1F381}";
$emojiFesta = "\u{1F389}";
$emojiCoracaoBranco = "\u{1F90D}";
$espaco = "                 ";
$loteria = 0; // 1= MegaSena 2= Quina 3= LotoFácil 4= LotoMania
$numeroApostas;
$quantidadeApostas;
$TabelaValoresMG = array(

    "Quanti. de numeros" => "Valor em R$",
                $espaco . 6 => 6.00,
                $espaco . 7 => 42.00, 
                $espaco . 8 => 168.00,
                $espaco . 9 => 504.00,
                $espaco . 10 => 1260.00,
                $espaco . 11 => 2772.00,
                $espaco . 12 => 5544.00,
                $espaco . 13 => 10296.00,
                $espaco . 14 => 18018.00,
                $espaco . 15 => 30030.00,
                $espaco . 16 => 48048.00,
                $espaco . 17 => 74256.00,
                $espaco . 18 => 111384.00,
                $espaco . 19 => 162792.00,
                $espaco . 20 => 232560.00,

);
$TabelaValoresQ = array(

    "Quanti. de numeros" => "Valor em R$",
               
                $espaco . 5 => 3.00,
                $espaco . 6 => 18.00,
                $espaco . 7 => 63.00,
                $espaco . 8 => 168.00, 
                $espaco . 9 => 378.00,
                $espaco . 10 => 756.00,
                $espaco . 11 => 1386.00,
                $espaco . 12 => 2476.00,
                $espaco . 13 => 3861.00,
                $espaco . 14 => 6006.00,
                $espaco . 15 => 9009.00,
               

);
$TabelaValoresLF = array(

    "Quanti. de numeros " => "Valor em R$",
               
                $espaco . 15 => 3.50,
                $espaco . 16 => 56.00,
                $espaco . 17 => 476.00,
                $espaco . 18 => 2856.00,
                $espaco . 19 => 13566.00,
                $espaco . 20 => 54264.00,
               

);
$TabelaValoresLM = array(

    "Quanti. de numeros " => "Valor em R$",
               
                $espaco . 50 => 3.00,             
);

Introducao();
escolhaLoteria();
escolhaNumerosEQuantidade();
sorteador();

print "\n\n";
printSlow($espaco . $azul . "Muito obrigada por utilizar o Surpresinja! Volte sempre!");
print $resetar . $emojiCoracaoBranco . $emojiFesta;


if ($loteria == 1); {
}

function Introducao()
{

    global $resetar;
    global $azul;
    global $fundoAzul;
    global $vermelho;
    global $emojiGift;
    global $espaco;

    print $espaco . $emojiGift . $fundoAzul . "Bem Vindo ao Surpresinja!" . $resetar . $emojiGift . "\n";
    print $azul . "Aqui você recebe números para apostas de loteria gerados por um super Ninja!\n" . $resetar;

    sleep(3);

    $continuar = true;
    while ($continuar == true) {

        print "\n";
        printSlow( $espaco . $vermelho . "Como funciona? Passo a passo: \n" . $resetar);
        printSlow("1- Escolha a forma de loteria que deseja.\n");
        printSlow("2- Selecione a quantidade de dezenas.\n");
        printSlow("3- Informe quantas apostas você deseja gerar.\n\n");

        printSlow("Após estes passos, o programa irá te gerar as apostas e quanto será gasto em cada.  \n");
        print("\n");
        printSlow("Pronto para começar?  ");
        print "\n";


        $resposta = readline(printSlow("[1] Sim!\n[2] Não. Por favor repita o passo a passo.  "));


        switch ($resposta) {
            case 1:
                $continuar = false;
                break;
            case 2:
                print "Repetindo passo a passo: \n";
                break;

            default:
                print "Erro: Opção Inválida. Executando passo a passo novamente:\n";
        }
    }
} // fim da função

function escolhaLoteria()
{

    global $resetar;
    global $vermelho;
    global $espaco;
    global $loteria;
    $emojiMoney = "\u{1F4B5}";

    print "\n" . $espaco;
    printSlow($vermelho . " Escolha a Loteria: " . $resetar);
    print $emojiMoney;

    $continuar = true;
    while ($continuar == true) {
        $resposta = readline(printSlow("\n[1] Mega Sena \n" . "[2] Quina \n" . "[3] LotoFacíl \n" . "[4] LotoMania     "));

        switch ($resposta) {
            case 1:
                $loteria = 1;
                $continuar = false;
                break;

            case 2:
                $loteria = 2;
                $continuar = false;
                break;

            case 3:
                $loteria = 3;
                $continuar = false;
                break;

            case 4:
                $loteria = 4;
                $continuar = false;
                break;

            default:
                print"\n";
                printSlow("Opção inválida. Escolha uma das opções:    \n");
        }
    }
    print"\n";
} //fim da funcao

function escolhaNumerosEQuantidade()
{
    global $loteria;
    global $vermelho;
    global $resetar;
    global $espaco;
    global $emojiFesta;
    global $numeroApostas;
    global $quantidadeApostas;
    global $TabelaValoresMG;
    global $TabelaValoresQ;
    global $TabelaValoresLF;
    global $TabelaValoresLM;

    
    $TudoOK = false;


    printSlow($espaco . $vermelho . "Você selecinou a ");

    if ($loteria == 1) {
        printSlow(" Mega Sena! ");
    }
    if ($loteria == 2) {
        printSlow(" Quina! ");
    }
    if ($loteria == 3) {
        printSlow(" LotoFácil! ");
    }
    if ($loteria == 4) {
        printSlow(" LotoMania! ");
    }

    print $resetar;
    print $emojiFesta . "\n";

    printSlow("Nesta modalidade você precisa acertar ");

    if ($loteria == 1) {
        printSlow(" 6 números. ");
    }
    if ($loteria == 2) {
        printSlow(" 5 números. ");
    }
    if ($loteria == 3) {
        printSlow(" de 11 à 15 números. ");
    }
    if ($loteria == 4) {
        printSlow(" de 15 à 20 números, ou nenhum. ");
    }

    print("\n");
    printSlow("Você deverá fazer apostas de \n");

    if ($loteria == 1) {
        printSlow(" 6 à 20 números. ");
    }
    if ($loteria == 2) {
        printSlow(" 5 à 15 números. ");
    }
    if ($loteria == 3) {
        printSlow(" 15 à 20 números. ");
    }
    if ($loteria == 4) {
        printSlow(" 50 números. ");
    }

    print("\n");

    if ($loteria == 1 or $loteria == 2 or $loteria == 3) {

        printSlow("Quanto mais números você apostar, mais chanches de ganhar. \n");
        print("\n");
        printSlow("Porém, mais caro irá ficar.  ");
        print("\n");
    }

    printSlow("Agora que já sabe como funciona, escolha uma das opções abaixo:  \n");
    print("\n");

    $continuar = true;
    while ($continuar == true) {

        $resposta = readline(printSlow("[1] Escolher minha quantidade de números de apostas.\n[2] Exibir tabela de valores de acordo com números apostados. \n"));
        print("\n");

        switch ($resposta) {
            case 1:

                $continuar2 = true;
                while ($continuar2 == true) {

                    if ($loteria == 1) { // PARTE MEGA SENA
                        $numeroApostas = readline(printSlow("Quantos números você deseja apostar? (6-20) \n"));

                        if ($numeroApostas < 6 or $numeroApostas > 20) {
                            printSlow("Quantidade de números escolida inválida.  \n");
                        } else {

                            $TudoOK = true;
                            $continuar2 = false;
                            break;
                        } //fim else
                    } // FIM PARTE MEGA SENA

                    if ($loteria == 2) { // PARTE QUINA
                        $numeroApostas = readline(printSlow("Quantos números você deseja apostar? (5-15) \n"));

                        if ($numeroApostas < 5 or $numeroApostas > 15) {
                            printSlow("Quantidade de números escolida inválida.  \n");
                        } else {

                            $TudoOK = true;
                            $continuar2 = false;
                            break;
                        } //fim else
                    } // FIM PARTE QUINA

                    if ($loteria == 3) { // PARTE LOTOFACIL
                    $numeroApostas = readline(printSlow("Quantos números você deseja apostar? (15-20) \n"));

                    if ($numeroApostas < 15 or $numeroApostas > 20) {
                        printSlow("Quantidade de números escolida inválida.  \n");
                    } else {

                        $TudoOK = true;
                        $continuar2 = false;
                        break;
                    } //fim else
                } // FIM PARTE LOTOFACIL

                if ($loteria == 4) { // LOTOMANIA

                    printSlow("Esta modalidade permite apenas 50 números.  \n");
                    $numeroApostas = 50;

                    $TudoOK = true;
                    $continuar2 = false;
                    break;
                } // FIM PARTE QUINA

                } //fim do while

                break;
                $continuar = false;


            case 2:
                if($loteria == 1){
                    
                    foreach($TabelaValoresMG as $numero => $valor){
                        print ucfirst($numero) . " = " . $valor . "\n"; 
                    }
                }// FIM MEGA SENA
               
                if($loteria == 2){
                    
                    foreach($TabelaValoresQ as $numero => $valor){
                        print ucfirst($numero) . " = " . $valor . "\n"; 
                    }
                }// FIM QUINA

                if($loteria == 3){
                    
                    foreach($TabelaValoresLF as $numero => $valor){
                        print ucfirst($numero) . " = " . $valor . "\n"; 
                    }
                }// FIM LOTOFACIL

                if($loteria == 4){
                    
                    foreach($TabelaValoresLM as $numero => $valor){
                        print ucfirst($numero) . " = " . $valor . "\n"; 
                    }
                }// FIM LOTOMANIA

                print "\n";
                break;

            default:
                printSlow("Opção inválida. Por favor escolha uma das opções abaixo:     \n");
                print "\n";

        } // fim do switch

        if ($TudoOK == true) {
            break;
        }
    } //fim do while

    if ($loteria == 1) {
        $quantidadeApostas = readline(printSlow("Por fim, escolha quantas apostas você quer gerar:  "));
    }
    if ($loteria == 2) {
        $quantidadeApostas = readline(printSlow("Por fim, escolha quantas apostas você quer gerar:  "));
    }
    if ($loteria == 3) {
        $quantidadeApostas = readline(printSlow("Por fim, escolha quantas apostas você quer gerar:  "));
    }
    if ($loteria == 4) {
        $quantidadeApostas = readline(printSlow("Por fim, escolha quantas apostas você quer gerar:  "));
    }

}// fim da funcao

function sorteador(){

    global $loteria;
    $valorTotal = 0;
    global $espaco;
    global $azul;
    global $resetar;
    $emojiBrilho = "\u{2728}";
    global $numeroApostas;
    global $quantidadeApostas;
    global $TabelaValoresMG;
    global $TabelaValoresQ;
    global $TabelaValoresLF;
    global $TabelaValoresLM;

    print "\n";
    printSlow($espaco . $emojiBrilho . $azul . "!Sorteando números!   " );
    print $resetar . $emojiBrilho . "\n";


    if($loteria == 1){
        
        $min = 1;
        $max = 60;
    }
    if($loteria == 2){
        
        $min = 1;
        $max = 80;
    }
    if($loteria == 3){
        
        $min = 1;
        $max = 25;
    }
     if($loteria == 4){
        
        $min = 00;
        $max = 99;
    }

       for ($i = 0; $i < $quantidadeApostas; $i++){
            
            printSlow($i + 1 . "° aposta: ");
            print "\n";
            
            $numerosPossiveis = range($min, $max);
            shuffle($numerosPossiveis);

            $numerosSorteados = array_slice($numerosPossiveis, 0, $numeroApostas);
            sort($numerosSorteados);

            $ultimo = end($numerosSorteados);

            foreach($numerosSorteados as $numeros){
                print  $numeros;

                if($numeros != $ultimo){
                    print " - ";
                }
                
                sleep(1);
            }

            print "\n";
            printSlow("Valor gasto nesta aposta:  ");

            if($loteria == 1){
                print $TabelaValoresMG[$espaco . $numeroApostas];
                $valorTotal += $TabelaValoresMG[$espaco . $numeroApostas];
            }
            if($loteria == 2){
                print $TabelaValoresQ[$espaco . $numeroApostas];
                $valorTotal += $TabelaValoresQ[$espaco . $numeroApostas];
            }
            if($loteria == 3){
                print $TabelaValoresLF[$espaco . $numeroApostas];
                $valorTotal += $TabelaValoresLF[$espaco . $numeroApostas];
            }
            if($loteria == 4){
                print $TabelaValoresLM[$espaco . $numeroApostas];
                $valorTotal += $TabelaValoresLM[$espaco . $numeroApostas];
            }

            printSlow(" R$.  ");
            print "\n\n";
       }// fim do for
       
        printSlow("O valor total gasto será de: " . $valorTotal . " R$. ") ;
    
}//fim da funcao

function printSlow($texto)
{
    $letra = "a";
    $velocidade = 25000;
    $tamanhoTexto = mb_strlen($texto);
    for ($i = 0; $i < $tamanhoTexto; $i++) {

        $letra = $texto[$i];
        print $letra;
        usleep($velocidade);
    }
}
