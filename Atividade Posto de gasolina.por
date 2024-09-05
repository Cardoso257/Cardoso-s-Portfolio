programa
{
	
	funcao inicio()
	{
		inteiro Option 	   = 0, Lit  = 0
		real GasL    = 0, EtaL = 0, DieL = 0, Gains = 0, Dep     = 0
		inteiro GasA = 0, EtaA = 0, DieA = 0, Forma = 0, Pix     = 0, Credito = 0
		cadeia MostBuyed, Pagamento[3], storedPass, tryPass

		Pagamento[1] = "Pix"
		Pagamento[2] = "Crédito"

		escreva("Registre sua senha: \n")
		leia(storedPass)
		
		enquanto(verdadeiro) {
			escreva("Digite sua senha: \n")
			leia(tryPass)
			enquanto (tryPass != storedPass) {
				escreva("senha incorreta tente novamente: \n")
				leia(tryPass)
			}
			
			escreva("-------------------------\n")
			escreva("1. Gasolina -> R$5.50\n")
			escreva("-------------------------\n")
			escreva("2. Etanol ->   R$4.50\n")
			escreva("-------------------------\n")
			escreva("3. Diesel ->   R$6.00\n")
			
			leia(Option)

			se (Option == 0) {
				pare
			}
			senao {
				enquanto (Option < 0 ou Option > 3) {
					escreva("Digite outra opção\n")
					leia(Option)
				}
			}

			
			enquanto (Forma != 1 e Forma != 2) {
				escreva("-------------------------\n")
				escreva("Forma de pagamento:\n")
				escreva("-------------------------\n")
				escreva("1. Pix\n")
				escreva("-------------------------\n")
				escreva("2. Crédito\n")

				leia(Forma)

				se (Forma != 1 e Forma != 2) {
					limpa()
					escreva("Escreva outra forma\n")
				}
				senao se (Forma == 1) {
					Pix++
				}
				senao {
					Credito++
				}
			}
			
			enquanto(Dep == 0) {
				escreva("Quantos reais deseja abastecer?\n")
				leia(Dep)
				limpa()
				se (Dep == 0) {
					escreva("Digite outro valor\n")
				}
			}
			
			se (Option == 1) {
				GasA++
				GasL  = Dep / 5.5
				Gains = Gains + Dep
			}
			senao se(Option == 2) {
				EtaA++
				EtaL  = Dep / 5.5
				Gains = Gains + Dep
			}
			senao se(Option == 3) {
				DieA++
				DieL  = Dep / 5.5
				Gains = Gains + Dep
			}

			se (GasA > EtaA) {
				se (GasA > DieA) {
					MostBuyed = "Gasolina"
				}
				senao se (GasA == DieA) {
					MostBuyed = "Gasolina e Diesel"
				}
				senao {
					MostBuyed = "Diesel"
				}
			}
			senao se (GasA < EtaA) {
				se (EtaA > DieA) {
					MostBuyed = "Etanol"
				}
				senao se (EtaA == DieA) {
					MostBuyed = "Gasolina e Diesel"
				}
				senao  {
					MostBuyed = "Diesel"
				}
			}
			senao {
				MostBuyed = "Gasolina e Etanol"
			}
			Dep = 0
			escreva("Mais comprado é: ", MostBuyed, "\n")
			escreva("Ganhos = ", Gains,"\n")
			escreva("Quantidade de compras por pix: ", Pix, "\n")
			escreva("Quantidade de compras por Crédito: ", Credito, "\n")
			
		}
	}

}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 534; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */