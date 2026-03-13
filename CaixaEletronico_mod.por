programa
{
	
   	real saldo = 150.00// Float
    inteiro senha = 3589
    cadeia nome

	funcao inicio() {

    escreva("Informe seu nome: ")
    leia(nome)
    escreva("Olá, ", nome, "!", " É um prazer ter você por aqui!")

		inteiro opcao 
	
		escreva("\nEscolha uma opção:\n")
		escreva("1. Ver saldo\n")
    escreva("2. Ver extrato\n")
		escreva("3. Fazer saque\n")
		escreva("4. Fazer depósito\n")
    escreva("5. Fazer transferência\n")
		escreva("6. Sair\n")
		leia(opcao)

		escreva("A opção selecionada foi: " +opcao + "\n")

    se (opcao == 1) {
    verSaldo()
    } senao se (opcao == 2) {
		verExtrato()
    } senao se (opcao == 3) {
		fazerSaque()
    } senao se (opcao == 4) {
			fazerDeposito()
    } senao se (opcao == 5) {
		fazerTransferencia()
    } senao se (opcao == 6) {
		sair()
    } senao {
		erro()
    }

	}

	  funcao verSaldo(){
    escreva("Digite a senha: ")
    leia(senha)
    se(senha==3589){
	  escreva("Seu saldo atual é: ", saldo, "\n")
	  Menu()
    }
    senao{
    escreva("Senha incorreta. Tente novamente. ")
    verSaldo()
    }
	}

    funcao verExtrato(){
    escreva("Digite a senha: ")
    leia(senha)
    se(senha==3589){
	  escreva("Pagamento pix: -920,00\n", "Recebimento pix: +4.223,00\n", "Compra efetuada em VIVARA: -5.478,00\n", "Compra efetuada em ASSAI MERCADOS LTDA: -3.456,00\n", "Recebmento pix: +10.552,78\n")
	  Menu()}
    senao{
    escreva("Senha incorreta. Tente novamente. ")
    verExtrato()
    }

	}
	
	  funcao fazerDeposito() {

		real deposito
		
		escreva("Qual o valor para depósito? ")
		leia(deposito)
		
		se (deposito <= 0){
		escreva("Por favor, informe um número válido.\n")
		fazerDeposito()
		} senao {
		saldo = saldo + deposito
		verSaldo()
		}
	}
	
	  funcao fazerSaque(){
	
		real saque

    escreva("Digite a senha: ")
    leia(senha)
    se(senha==3589){
		escreva("Qual o valor para saque? ")
		leia(saque)
    }
    senao{
    escreva("Senha incorreta. Tente novamente: ")
    fazerSaque()
    }
    se(saque>saldo ou saque <= 0){
    escreva("Operação não autorizada.")
    escreva("\nDigite outro valor: ")
    leia(saque)
    }
    senao{
		saldo = saldo - saque
		verSaldo()
    }
	}

    funcao fazerTransferencia(){

    real transferencia
    inteiro numero_conta

    escreva("Digite a senha: ")
    leia(senha)
    se(senha==3589){
    escreva("Qual o valor da transferência?: ")
    leia(transferencia)}
    senao{
    escreva("Senha incorreta. Tente novamente: ")
    fazerTransferencia()
    }
    se(transferencia>saldo ou transferencia<=0){
    escreva("Valor indisponível. Tente outro valor: ")
    leia(transferencia)
    }
    senao{
    escreva("Qual o número da conta para transferência?: ")
    leia(numero_conta)}
    saldo = saldo - transferencia
    verSaldo()
    }

	  funcao erro() {
		escreva("Opção Inválida")
		Menu()
	}

	  funcao sair(){
	  escreva(nome, ",", " foi um prazer ter você por aqui!.")
	}

    funcao Menu(){
    inteiro opcao 
	
		escreva("\nEscolha uma opção:\n")
		escreva("1. Ver saldo\n")
    escreva("1. Ver extrato\n")
		escreva("2. Fazer saque\n")
		escreva("3. Fazer depósito\n")
    escreva("1. Fazer transferência\n")
		escreva("4. Sair\n")
		leia(opcao)
  }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 47; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */