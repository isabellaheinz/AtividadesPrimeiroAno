<?php

$clientes = [];
const CHEQUE_ESPECIAL = 500;
$negrito = "\033[1m";
$reset = "\033[0m";

function cadastrarCliente(&$clientes, $negrito, $reset) : bool {

    
    $nome = readline('Informe seu nome: ');
    $cpf = readline('Informe seu CPF: ');

    if (isset($clientes[$cpf])) {
        print("Esse CPF já possui cadastro. \n");
        return false;
    }

    $clientes[$cpf] = [
        'nome' => $nome,
        'cpf' => $cpf,
        'contas' => []
    ];

    print $negrito . ("Cliente Cadastrado com sucesso! \n") . $reset;
    return true;
} 

function cadastrarConta(array &$clientes, $negrito, $reset) : bool{

    $cpf = readline("Informe seu CPF: ");

    if (! isset($clientes[$cpf])) {
        print("Cliente não possui cadastro. \n");
        return false;
    }

    $numConta = rand(10000, 100000);
    print "\n";
    $clientes[$cpf]['contas'][$numConta] = [
        'saldo' => 0,
        'cheque especial' => CHEQUE_ESPECIAL,
        'dividas' => 0,
        'extrato' => []
    ];

    print $negrito . ("Conta criada com sucesso! \n");
    print("O número da sua conta é: $numConta" . $reset . "\n\n");
    return true; 

}

function depositar(&$clientes, $negrito, $reset) : bool{
   
    $cpf = readline("Informe seu CPF: ");
    if (! isset($clientes[$cpf])) {
        print("Cliente não possui cadastro. \n");
        return false;
    }


    $numConta = readline("Informe o número da sua conta: ");
    if (! isset($clientes[$cpf]['contas'][$numConta])) {
        print("Conta não encontrada. \n");
        return false;
    }


    $valorDeposito = (float) readline("Informe o valor do depósito: ");
    if($valorDeposito <= 0){
        print("Valor de depósito inválido. ");
        return false;
    }

    $clientes[$cpf]['contas'][$numConta]['saldo'] += $valorDeposito;
    $data = date('d/m/Y H:i');
    $clientes[$cpf]['contas'][$numConta]['extrato'][] = "Depósito de R$ $valorDeposito em $data";

    print $negrito . ("Depósito realizado com sucesso. \n") . $reset;
   
    return true; 
}

function sacar(&$clientes, $negrito, $reset){
    

    $cpf = readline("Informe seu CPF: ");
     if (! isset($clientes[$cpf])) {
        print("Cliente não possui cadastro. \n");
        return false;
    }


    $numConta = readline("Informe o número da sua conta: ");
     if (! isset($clientes[$cpf]['contas'][$numConta])) {
        print("Conta não encontrada. \n");
        return false;
    }


    $valorSaque = (float) readline("Informe o valor do saque: ");
   
    if ($valorSaque > $clientes[$cpf]['contas'][$numConta]['saldo'] && $clientes[$cpf]['contas'][$numConta]['cheque especial'] == 500 ) {
        
        print("\nVocê não possui saldo o suficiente.\n");
        print("Adicionaremos o Cheque Especial ao seu saldo.\n");
        print("Adicionando...\n");
        sleep(1);
        print $negrito . ("Saldo alterado com sucesso!\n") . $reset;

        $clientes[$cpf]['contas'][$numConta]['dividas'] = [
            'cheque especial' => 500,
        ];

        $clientes[$cpf]['contas'][$numConta]['cheque especial'] = 0;

        $clientes[$cpf]['contas'][$numConta]['saldo'] += 500; 
        
    }

    else if ($valorSaque > $clientes[$cpf]['contas'][$numConta]['saldo']) {
    
        print $negrito . ("Você não possui saldo o suficiente.\n") . $reset;
        return false;
    }

    $clientes[$cpf]['contas'][$numConta]['saldo'] -= $valorSaque;
    $data = date('d/m/Y H:i');
    $clientes[$cpf]['contas'][$numConta]['extrato'][] = "Saque de R$ $valorSaque em $data";
   
    return true;

}

function consultarSaldo(&$clientes){

    $cpf = readline("Informe seu CPF: ");
    if (! isset($clientes[$cpf])) {
        print("Cliente não possui cadastro. \n");
        return false;
    }

    $numConta = readline("Informe o número da sua conta: ");
     if (! isset($clientes[$cpf]['contas'][$numConta])) {
        print("Conta não encontrada. \n");
        return false;
    }

    print "Seu saldo é de R$";
    print $clientes[$cpf]['contas'][$numConta]['saldo'] . "\n";
    return true;
}

function consultarExtrato(&$clientes){

    $cpf = readline("Informe seu CPF: ");
    if (! isset($clientes[$cpf])) {
        print("Cliente não possui cadastro. \n");
        return false;
    }

    $numConta = readline("Informe o número da sua conta: ");
     if (! isset($clientes[$cpf]['contas'][$numConta])) {
        print("Conta não encontrada. \n");
        return false;
    }

    print "Seu extrato é: \n\n";
    foreach ($clientes[$cpf]['contas'][$numConta]['extrato'] as $dado => $informacao) {
        print $informacao . "\n";
    }
    print "\n";
    
    return true;
}

function consultarCliente(&$clientes){

    $cpf = readline("Informe seu CPF: ");
    if (! isset($clientes[$cpf])) {
        print("Cliente não possui cadastro. \n");
        return false;
    }

    print("Cliente: $cpf\n");
   
    print_r($clientes[$cpf]);

     return true;
}

function menu(){
    print"\n";
    print "***************** Agencia Bancaria Ibellasa *****************\n";
    print "* [1] Cadastrar Cliente                                     *\n";
    print "* [2] Cadastrar Conta                                       *\n";
    print "* [3] Realizar Depósito                                     *\n";
    print "* [4] Realizar Saque                                        *\n";
    print "* [5] Consultar Saldo                                       *\n";
    print "* [6] Consultar Extrato                                     *\n";
    print "* [7] Consultar Cliente                                     *\n";
    print "* [8] Sair                                                  *\n";
    print "*************************************************************\n";
    print("Escolha uma opção: ");
}

//Programa Principal

while(true){


    menu();
    $opcao = readline();

    switch ($opcao) {
        case '1':
            cadastrarCliente($clientes, $negrito, $reset);
            break;
        
        case '2':
            cadastrarConta($clientes, $negrito, $reset);
            break;

        case '3':
            depositar($clientes, $negrito, $reset);
            break;

        case '4':
            sacar($clientes, $negrito, $reset);
            break;

        case '5':
            consultarSaldo($clientes);
            break;

        case '6':
            consultarExtrato($clientes);
            break;
        
        case '7':
            consultarCliente($clientes);
            break;

        case '8':
            print ("Obrigada por usar o banco Ibellasa!");
            die();
            break;
        
        default:
            print ("Opção inválida. \n\n");
            break;
    }

}
