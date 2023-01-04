programa
{
	inclua biblioteca Tipos
	
	
	funcao inicio()
	{
		real valor = validarFormatarValores("1000.00")
		se(valor < 0)
		{
			retorne	
		}


				
		escreva("Infomações sobre o vendedor e seus ganhos\n\n")

		cadeia nome
		escreva("\nQual é o nome do vendedor: ")
		leia(nome)

		cadeia salarioFixoString
		escreva("\nQual é salário fixo do vendedor em questão: ")
		leia(salarioFixoString)
		se(validarFormatarValores(salarioFixoString) < 0)
		{
			retorne	
		}

		real salarioFixo = validarFormatarValores(salarioFixoString)

		cadeia totalDeVendasEfetuadasString
		escreva("\nQual foi o valor total em vendas efetuadas nesse mês: ")
		leia(totalDeVendasEfetuadasString)
		se(validarFormatarValores(totalDeVendasEfetuadasString) < 0)
		{
			retorne	
		}

		real totalDeVendasEfetuadas = validarFormatarValores(totalDeVendasEfetuadasString)
		
		real ganhoTotalMensal = (salarioFixo + (totalDeVendasEfetuadas * 0.15))
		
		
		escreva("\nO valor total de ganhos desse vendedor referênte a esse mês será de " + ganhoTotalMensal)
		
			
	}

		funcao real validarFormatarValores(cadeia valorEmTexto)
		{
			logico isReal = Tipos.cadeia_e_real(valorEmTexto)
			logico isNumero = Tipos.cadeia_e_inteiro(valorEmTexto, 10)
			se(isReal == falso){
				escreva("\nPor favor, insira um valor válido. Execute o programa novamente.")
				retorne -1.00
			}

			real resultadoFormatado = Tipos.cadeia_para_real(valorEmTexto)

			
			se(resultadoFormatado < 0){
			escreva("\nInsira um número positivo. Execute o programa novamente.")
			retorne -1.00

			}

			retorne resultadoFormatado
		}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 155; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */