#!/bin/bash

export LANG=C.UTF-8

echo '        #                    #
  mmmm  # mm    mmm    mmm   # mm
 #" "#  #"  #  "   #  #   "  #"  #
 #   #  #   #  m"""#   """m  #   #
 "#m"#  #   #  "mm"#  "mmm"  #   #
  m  #
   "" '
echo "Telegram: @Foxxer_SA"
echo "Se inscreve lá @AcervoHackerBR!!"
echo "GitHub: foxx3r"
sleep 1
echo "Em casos específicos você precisa executar como usuário root"
sleep 1

while true
do
foxxer(){
echo "==================================="
}
echo "--------------------------------"
echo "[1] VERIFICAR CRC              |"
echo "[2] VERIFICAR BLAKE2           |"
echo "[3] VERIFICAR MD5              |"
echo "[4] VERIFICAR SHA-1            |"
echo "[5] VERIFICAR SHA-224          |"
echo "[6] VERIFICAR SHA-256          |"
echo "[7] VERIFICAR SHA-384          |"
echo "[8] VERIFICAR SHA-512          |"
echo "[9] VERIFICAR SYSV             |"
echo "--------------------------------"
read -p "Qual hash deseja utilizar? -> " fox
foxxer
if [ $fox == 1 ]
then
    read -p "Especifique o caminho do arquivo -> " fux
    variavel1=`cksum $fux | cut -d' ' -f1,1`
    echo "a hash do arquivo $fux é $variavel1"
    foxxer
    read -p "Deseja comparar a hash de outro arquivo? [0=não/1=sim] -> " fex
    if [ $fex == 0 ]
    then
        foxxer
    elif [ $fex == 1 ]
    then
        read -p "Especifique o caminho de outro arquivo -> " fax
        variavel2=`cksum $fax | cut -d' ' -f1,1`
        echo "A hash do arquivo 1 é $variavel1 e a hash do arquivo 2 é $variavel2"
        echo " "
        if [ $variavel1 == $variavel2 ]
        then
            echo "o resultado é: OS DOIS ARQUIVOS SÃO VERDADEIROS"
        elif [ $variavel1 != $variavel2 ]
        then
            echo "o resultado é: UM DOS ARQUIVOS FOI ALTERADO!!"
        fi
     foxxer
     fi
elif [ $fox == 2 ]
then
    read -p "Especifique o caminho do arquivo -> " fux
    variavel1=`b2sum $fux | cut -d' ' -f1,1`
    echo "A hash do arquivo $fux é $variavel1"
    foxxer
    read -p "Deseja comparar a hash de outro arquivo? [0=não/1=sim] -> " fex
    if [ $fex == 0 ]
    then
    foxxer
    elif [ $fex == 1 ]
    then
        read -p "Especifique o caminho de outro arquivo -> " fax
        variavel2=`b2sum $fax | cut -d' ' -f1,1`
        echo "A hash do arquivo 1 é $variavel1 e a hash do arquivo 2 é $variavel2"
        echo " "
        if [ $variavel1 == $variavel2 ]
        then
            echo "o resultado é: OS DOIS ARQUIVOS SÃO VERDADEIROS"
        elif [ $variavel1 != $variavel2 ]
        then
            echo "o resultado é: UM DOS ARQUIVOS FOI ALTERADO!!"
        fi
    foxxer
    fi
elif [ $fox == 3 ]
then
    read -p "Especifique o caminho do arquivo -> " fux
    variavel1=`md5sum $fux | cut -d' ' -f1,1`
    echo "A hash do arquivo $fux é $variavel1"
    foxxer
    read -p "Deseja comparar a hash de outro arquivo? [0=não/1=sim] -> " fex
    if [ $fex == 0 ]
    then
        foxxer
    elif [ $fex == 1 ]
    then
        read -p "Especifique o caminho de outro arquivo -> " fax
        variavel2=`md5sum $fax | cut -d' ' -f1,1`
        echo "A hash do arquivo 1 é $variavel1 e a hash do arquivo 2 é $variavel2"
        echo " "
        if [ $variavel1 == $variavel2 ]
        then
            echo "o resultado é: OS DOIS ARQUIVOS SÃO VERDADEIROS"
        elif [ $variavel1 != $variavel2 ]
        then
            echo "o resultado é: UM DOS ARQUIVOS FOI ALTERADO!!"
        fi
    foxxer
    fi
elif [ $fox == 4 ]
then
    read -p "Especifique o caminho do arquivo -> " fux
    variavel1=`sha1sum $fux | cut -d' ' -f1,1`
    echo "A hash do arquivo $fux é $variavel1"
    foxxer
    read -p "Deseja comparar a hash de outro arquivo? [0=não/1=sim] -> " fex
    if [ $fex == 0 ]
    then
        foxxer
    elif [ $fex == 1 ]
    then
        read -p "Especifique o caminho de outro arquivo -> " fax
        variavel2=`sha1sum $fax | cut -d' ' -f1,1`
        echo "A hash do arquivo 1 é $variavel1 e a hash do arquivo 2 é $variavel2"
        echo " "
        if [ $variavel1 == $variavel2 ]
        then
            echo "o resultado é: OS DOIS ARQUIVOS SÃO VERDADEIROS"
        elif [ $variavel1 != $variavel2 ]
        then
            echo "o resultado é: UM DOS ARQUIVOS FOI ALTERADO!!"
        fi
    foxxer
    fi
elif [ $fox == 5 ]
then
    read -p "Especifique o caminho do arquivo -> " fux
    variavel1=`sha224sum $fux | cut -d' ' -f1,1`
    echo "a hash do arquivo $fux é $variavel1"
    foxxer
    read -p "Deseja comparar a hash de outro arquivo? [0=não/1=sim] -> " fex
    if [ $fex == 0 ]
    then
        foxxer
    elif [ $fex == 1 ]
    then
        read -p "Especifique o caminho de outro arquivo -> " fax
        variavel2=`sha224 $fax | cut -d' ' -f1,1`
        echo "A hash do arquivo 1 é $variavel1 e a hash do arquivo 2 é $variavel2"
        echo " "
        if [ $variavel1 == $variavel2 ]
        then
            echo "o resultado é: OS DOIS ARQUIVOS SÃO VERDADEIROS"
        elif [ $variavel1 != $variavel2 ]
        then
            echo "o resultado é: UM DOS ARQUIVOS FOI ALTERADO!!"
        fi
    foxxer
    fi
elif [ $fox == 6 ]
then
    read -p "Especifique o caminho do arquivo -> " fux
    variavel1=`sha256sum $fux | cut -d' ' -f1,1`
    echo "a hash do arquivo $fux é $variavel1"
    foxxer
    read -p "Deseja comparar a hash de outro arquivo? [0=não/1=sim] -> " fex
    if [ $fex == 0 ]
    then
        foxxer
    elif [ $fex == 1 ]
    then
        read -p "Especifique o caminho de outro arquivo -> " fax
        variavel2=`sha256sum $fax | cut -d' ' -f1,1`
        echo "A hash do arquivo 1 é $variavel1 e a hash do arquivo 2 é $variavel2"
        echo " "
        if [ $variavel1 == $variavel2 ]
        then
            echo "o resultado é: OS DOIS ARQUIVOS SÃO VERDADEIROS"
        elif [ $variavel1 != $variavel2 ]
        then
            echo "o resultado é: UM DOS ARQUIVOS FOI ALTERADO!!"
        fi
    foxxer
    fi
elif [ $fox == 7 ]
then
    read -p "Especifique o caminho do arquivo -> " fux
    variavel1=`sha384sum $fux | cut -d' ' -f1,1`
    echo "a hash do arquivo $fux é $variavel1"
    foxxer
    read -p "Deseja comparar a hash de outro arquivo? [0=não/1=sim] -> " fex
    if [ $fex == 0 ]
    then
        foxxer
    elif [ $fex == 1 ]
    then
        read -p "Especifique o caminho de outro arquivo -> " fax
        variavel2=`sha384sum $fax | cut -d' ' -f1,1`
        echo "A hash do arquivo 1 é $variavel1 e a hash do arquivo 2 é $variavel2"
        echo " "
        if [ $variavel1 == $variavel2 ]
        then
            echo "o resultado é: OS DOIS ARQUIVOS SÃO VERDADEIROS"
        elif [ $variavel1 != $variavel2 ]
        then
            echo "o resultado é: UM DOS ARQUIVOS FOI ALTERADO!!"
        fi
    foxxer
    fi
elif [ $fox == 8 ]
then
    read -p "Especifique o caminho do arquivo -> " fux
    variavel1=`sha512sum $fux | cut -d' ' -f1,1`
    echo "a hash do arquivo $fux é $variavel1"
    foxxer
    read -p "Deseja comparar a hash de outro arquivo? [0=não/1=sim] -> " fex
    if [ $fex == 0 ]
    then
        foxxer
    elif [ $fex == 1 ]
    then
        read -p "Especifique o caminho de outro arquivo -> " fax
        variavel2=`sha512sum $fax | cut -d' ' -f1,1`
        echo "A hash do arquivo 1 é $variavel1 e a hash do arquivo 2 é $variavel2"
        echo " "
        if [ $variavel1 == $variavel2 ]
        then
            echo "o resultado é: OS DOIS ARQUIVOS SÃO VERDADEIROS"
        elif [ $variavel1 != $variavel2 ]
        then
            echo "o resultado é: UM DOS ARQUIVOS FOI ALTERADO!!"
        fi
    foxxer
    fi
elif [ $fox == 9 ]
then
    read -p "Especifique o caminho do arquivo -> " fux
    variavel1=`sum $fux | cut -d' ' -f1,1`
    echo "a hash do arquivo $fux é $variavel1"
    foxxer
    read -p "Deseja comparar a hash de outro arquivo? [0=não/1=sim] -> " fex
    if [ $fex == 0 ]
    then
        foxxer
    elif [ $fex == 1 ]
    then
        read -p "Especifique o caminho de outro arquivo -> " fax
        variavel2=`sum $fax | cut -d' ' -f1,1`
        echo "A hash do arquivo 1 é $variavel1 e a hash do arquivo 2 é $variavel2"
        echo " "
        if [ $variavel1 == $variavel2 ]
        then
            echo "o resultado é: OS DOIS ARQUIVOS SÃO VERDADEIROS"
        elif [ $variavel1 != $variavel2 ]
        then
            echo "o resultado é: UM DOS ARQUIVOS FOI ALTERADO!!"
        fi
    foxxer
    fi
fi
done
