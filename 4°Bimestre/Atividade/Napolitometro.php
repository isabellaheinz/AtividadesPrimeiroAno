<?php

$pontuacao = 0;
$anos = 0;
$GostarSorvete = 0;
$GirlBoy = 0;

print "Este é o Napolitometro!\n";
print "Vamos descobrir qual sabor do sorvete napolitano você é.\n";
print "O seu sabor pode refletir muito em sua personalidade!\n";
print "Vamos começar: ";

$anos = readline("Quantos anos você tem?");

if ($anos > 10 && $anos < 25) {

    $pontuacao += 5;
}
else if($anos > 25 && $anos < 50){

    $pontuacao += 10;
}

else if ($anos > 50 && $anos < 10){
    
    $pontuacao += 15;
}

$GostarSorvete = readline("De 0 à 10, o quanto você gosta de sorvete? ");

if ($GostarSorvete >= 0 && $GostarSorvete < 3){

    $pontuacao += 5;
}
else if($GostarSorvete > 3 && $GostarSorvete < 6){

    $pontuacao += 10;
}

else if ($GostarSorvete > 6 && $GostarSorvete <= 10){
    
    $pontuacao += 15;
}


$GirlBoy = readline("Você é homem ou mulher? 1 para mulher, 2 para homem.");

if($GirlBoy == 1){
    $pontuacao += 10;

} else {
    $pontuacao += 15;
}

if ($pontuacao > 40){
    print"Seu sabor do sorverte napolitano é o Creme!\n";
    print"Isso indica que você é uma pessoa serena, otimista e super calma.\n";
}


else if ($pontuacao > 30 && $pontuacao <= 40){
    print"Seu sabor do sorvete napolitano é chocolate!\n";
    print"Isso indica que você é uma pessoa honesta, confiavél e mal humorada.\n";

} else if ($pontuacao >= 20 && $pontuacao <= 30 ) {
    print "Seu sabor do sorvete napolitano é o morango!\n";
    print "Isso indica que você é uma pessoa amorosa, romântica e leva a vida com docura.\n";
}

print "Muito obrigada por testar o Napolitometro!";
