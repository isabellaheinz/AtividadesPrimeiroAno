<?php

print "Você deve acertar o número aleatório.\n";
print "Você tem um total de X tentativas!\n";
print "Elas serão sorteadas antes do jogo se iniciar.\n";
print "Para começar você tem 100 pontos.\n";
print "Quanto mais alto ou mais baixo forem seus chutes, mais pontos você perde!\n";
print "Quanto mais perto você estiver chegando do número, menos pontos serão perdidos.\n";
print "Você deve utilizar de suas tentativas para descobrir o quão perto está do número, até acerta-lo.";
print "Dica útil: O Número está entre 0 e 100.\n";
print "Seu objetivo é acertar o número o mais rápido, perdendo o mínimo de pontos.\n";
print "O jogo irá começar...\n";

$NumeroSortido = rand(0,100);
$pontuacao = 100;

sleep(3);
$tentativas = rand(8,15);
print "Você tem um total de $tentativas tentativas.\n";

$Acerto = false;

while($tentativas != 0){
   
    $chute = readline ("Qual seu chute?");

    if($chute > $NumeroSortido){
        $Distancia = $chute - $NumeroSortido;
        $pontuacao -= $Distancia;

    }  else if($chute < $NumeroSortido){
        $Distancia = $NumeroSortido - $chute;
        $pontuacao -= $Distancia;

    }

    if($chute > $NumeroSortido or $chute < $NumeroSortido ){

        $tentativas -= 1;

        if($tentativas == 0){

        print("Infelizmente você não conseguiu. Tente novamente.");
        break;
        }

        print "Você errou! Você perdeu $Distancia pontos!\n";
        print "Você ainda tem $tentativas tentativa(s). Está com $pontuacao ponto(s). \n";

       
    }
    
    else {

        print"Parabéns! Você acertou!\n";
        print "Sua pontuação final é: $pontuacao!";

        $Acerto = true;
        $tentativas = 0;
        break;

    } 
}

