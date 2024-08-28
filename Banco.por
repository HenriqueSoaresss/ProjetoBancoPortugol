programa {
  funcao inicio() {
    inteiro menu 
    cadeia espere 
    real saldo = 0 
    real saque 
    real deposito
    cadeia extrato = ""
    cadeia senha 
    real investir 
    real render 
    inteiro meses
    real rendimento
     

    escreva ("Digite sua senha: ")
    leia (senha) 
    enquanto (senha != "0603"){
    escreva ("Senha incorreta. Tente novamente.")
    escreva ("\nDigite sua senha: ")
    leia (senha) 
    }
    limpa()
    

    enquanto (menu != 0 ){ 
      escreva ("|-----------Menu-----------|\n")
      escreva ("| 1. SALDO                 |\n")
      escreva ("| 2. SAQUE                 |\n")
      escreva ("| 3. DEPOSITO              |\n")
      escreva ("| 4. EXTRATO               |\n")
      escreva ("| 5. INVESTIR              |\n")
      escreva ("| 0. SAIR                  |\n")
      escreva ("|--------------------------|\n")
      escreva ("OPÇÃO -> ")
      leia (menu)
      limpa ()

      escolha (menu){ 
        caso 1: 
       escreva("Saldo = R$", saldo, "\n")
       
       escreva ("Digite enter para voltar:")
       leia (espere) 
       
       

        pare

        caso 2: 
        escreva ("Digite sua senha para realizar o saque: ")
        leia (senha) 
        enquanto (senha != "0603"){ 
        escreva ("Senha incorreta. ")
        escreva ("\nDigite sua senha para realizar o saque: ")
        leia (senha)
        }
        limpa()
        escreva("Digite o quanto irá sacar: \n")
        leia (saque) 
        enquanto (saque < 0){
        escreva ("Valor invalido. Tente novamente: ")
        leia (saque)
        }
        se (saque > saldo){
        escreva ("Não autorizado\n")
        }
        senao{ 
        saldo = saldo - saque 
        extrato = extrato + "SAQUE --- R$ " + saque + "\n"
        escreva ("Saque realizado.\n ")
        
        escreva ("Aperte enter para continuar:")
        leia (espere)
        limpa()
        }
        

        
        pare

        caso 3: 
        escreva ("Digite sua senha para realizar o deposito: ")
        leia (senha) 
        enquanto (senha != "0603"){ 
        escreva ("Senha incorreta. ")
        escreva ("\nDigite sua senha para realizar o deposito: ")
        leia (senha)
        }
        limpa()
        escreva ("Digite quanto irá depositar: \n")
        leia (deposito)
        enquanto(deposito < 0){
        escreva ("Valor invalido. Tente novamente: ")
        leia (deposito)
        }
        saldo = saldo + deposito 
        extrato = extrato + "DEPOSITO --- R$ " + deposito + "\n"
        escreva ("Deposito realizado.\n")
        escreva ("Aperte enter para continuar.")
        leia (espere)
        limpa ()
        pare

        caso 4:
        escreva ("Digite sua senha para visualizar o extrato: ")
        leia (senha) 
        enquanto (senha != "0603"){ 
        escreva ("Senha incorreta. ")
        escreva ("\nDigite sua senha para visualizar o extrato: ")
        leia (senha)
        }
        limpa ()
        escreva (extrato)
        escreva ("Digite enter para continuar:")
        leia (espere)
        limpa ()
        
       
        pare

        caso 5:
        escreva ("Quanto você irá investir: ")
        leia (investir)
        se (investir > saldo ){
        escreva ("Saldo insufuciente.\n")
        }
        senao {
        escreva ("Digite os meses que irá investir: ")
        leia (meses)
        saldo = saldo - investir
        para (inteiro contador = 0; contador < meses; contador++){ 
        rendimento = investir * 1.02 
        investir = rendimento 
        limpa()
        }
        saldo = saldo + investir 
        escreva ("O rendimento final foi de: R$ " + investir + "\n")
        }
        pare

        caso 0: 
        pare
      }

    }
  }
}
