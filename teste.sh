#Conversor MultiConverterFileSacer
historico="historico.txt"

#Formatação da data para o ficheiro Histórico
DiaSemana=$(date +%A)
DiaAno=$(date +%F)
HorasDia=$(date +%T)


#Funções para Converter Unidades de Comprimento

    ## Função para converter metros em quilómetros
    metros_quilometros() {
        local metros="$1"
        local quilometros=$(echo "scale=2; $metros / 1000" | bc)
        echo "Resultado da Conversão: $metros m é igual a $quilometros Km."
        echo "$DiaSemana, $DiaAno, $HorasDia: $metros m é igual a $quilometros Km." >> $historico
    }

    ## Função para converter quilómetros em metros
    quilometros_metros() {  
        local quilometros="$1"
        local metros=$(echo "scale=2; $quiloemtros * 1000" | bc)
        echo "Resultado da Conversão: $quilometros km é igual a $metros m."
        echo "$DiaSemana, $DiaAno, $HorasDia: $quilometros km é igual a $metros m." >> $historico
    }

    ## Função para converter metros em centímetros
    metros_centimetros() {  
        local metros="$1"
        local centimetros=$(echo "scale=2; $metros * 100" | bc)
        echo "Resultado da Conversão: $metros m é igual a $centrimetros cm."
        echo "$DiaSemana, $DiaAno, $HorasDia: $metros m é igual a $centrimetros cm." >> $historico
    }  

    ## Função para converter centímetros em metros
    centimetros_metros() {  
        local centimetros="$1"
        local metros=$(echo "scale=2; $centimetros / 100" | bc)
        echo "Resultado da Conversão: $centimetros cm é igual a $metros m."
        echo "$DiaSemana, $DiaAno, $HorasDia: $centimetros cm é igual a $metros m." >> $historico
    }   

    ## Função para converter quilómetros em centímetros
    quilometros_centimetros() {  
        local quilometros="$1"
        local centimetros=$(echo "scale=2; $quilometros * 100000" | bc)
        echo "Resultado da Conversão: $quilometros Km é igual a $centimetros cm."
        echo "$DiaSemana, $DiaAno, $HorasDia: $quilometros Km é igual a $centimetros cm.">> $historico
    }   

    ## Função para converter centímetros em quilómetros
    centimetros_quilometros() {  
        local centimetros="$1"
        local quilometros=$(echo "scale=2; $centimetros / 100000" | bc)
        echo "Resultado da Conversão: $centimetros cm é igual a $quilometros Km."
        echo "$DiaSemana, $DiaAno, $HorasDia: $centimetros cm é igual a $quilometros Km.">> $historico
    }   


#Funções para Converter Unidades de Byte

    ## Função para converter bytes para kilobytes
    bytes_kilobytes() {
        local bytes="$1"
        local kilobytes=$(echo "scale=2; $bytes / 1024" | bc)
        echo "Resultado da Conversão: $bytes B é igual a $kilobytes KB."
        echo "$DiaSemana, $DiaAno, $HorasDia: $bytes B é igual a $kilobytes KB." >> $historico
    }

    ## Função para converter bytes para megabytes
    bytes_megabytes() {
        local bytes="$1"
        local megabytes=$(echo "scale=2; $bytes / (1024 * 1024)" | bc)
        echo "Resultado da Conversão: $bytes B é igual a $megabytes MB."
        echo "$DiaSemana, $DiaAno, $HorasDia: $bytes B é igual a $megabytes MB." >> $historico
    }

    ## Função para converter bytes para gigabytes
    bytes_gigabytes() {
        local bytes="$1"
        local gigabytes=$(echo "scale=2; $bytes / (1024 * 1024 * 1024)" | bc)
        echo "Resultado da Conversão: $bytes B é igual a $gigabytes GB."
        echo "$DiaSemana, $DiaAno, $HorasDia: $bytes B é igual a $gigabytes GB." >> $historico
    }

    ## Função para converter bytes para terabytes
    bytes_to_terabytes() {
        local bytes="$1"
        local terabytes=$(echo "scale=2; $bytes / (1024 * 1024 * 1024 * 1024)" | bc)
        echo "Resultado da Conversão: $bytes B é igual a $terabytes TB."
        echo "$DiaSemana, $DiaAno, $HorasDia: $bytes B é igual a $terabytes TB." >> $historico
    }
    
    ## Função para converter megabytes para bytes
    megabytes_bytes() {
        local megabytes="$1"
        local bytes=$(echo "scale=2; $megabytes * (1024 * 1024)" | bc)
        echo "Resultado da Conversão: $megabytes MB é igual a $bytes B."
        echo "$DiaSemana, $DiaAno, $HorasDia: $megabytes MB é igual a $bytes B." >> $historico
    }

    ## Função para converter gigabytes para megabytes
    gigabytes_megabytes() {
        local gigabytes="$1"
        local megabytes=$(echo "scale=2; $gigabytes * 1024" | bc)
        echo "Resultado da Conversão: $gigabytes GB é igual a $megabytes MB."
        echo "$DiaSemana, $DiaAno, $HorasDia: $gigabytes GB é igual a $megabytes MB." >> $historico
    }


#Função para Converter Unidades de Tempo

#Função para Converter Moedas


# Script Principal
echo "
          @%%%%%%%%%%%%%%%%%%%%%%%%%%%%%@
          %%@                         @%%
          %%                           %%
          %% %%%%%%%%%%%%%%%%%%%%%%%%% %%
          %% %%      BEM-VINDO      %% %%
          %% %%         AO          %% %%
          %% %%    MultiConverter   %% %% 
          %% %%%%%%%%%%%%%%%%%%%%%%%%% %%
          %%                           %%
          %%                           %%
          %%  %%%%%%% %%%%%%% %%%%%%%  %%
          %%  %%   %% %%   %% %%   %%  %%
          %%  %%%%%%% %%%%%%% %%%%%%%  %%
          %%   %%%%@   %%%%%   %%%%%   %%
          %%   %%%%%   %%%%%   %%%%%   %%
          %%  %%@ @%% %%@ @%% %%@ @%%  %%
          %%  %%@ @%% %%@ @%% %%   %%  %%
          %%  @%%%%%% @%%%%%@ %%   %%  %%
          %%    @@@     @@@   %%   %%  %%
          %%  %%%%%%% %%%%%%% %%   %%  %%
          %%  %%   %% %%   %% %%   %%  %%
          %%  %%%%%%% %%%%%%% %%%%%%%  %%
          %%                           %%
          %%@                         @%%
          @%%%%%%%%%%%%%%%%%%%%%%%%%%%%%@ "

while true; do
    echo
    echo "**** MultiConverterFileSaver ****"
    echo "1. Conversor de unidades de Comprimento (Centrímetro/Metros/Quilômetros)"
    echo "2. Conversor de unidades de Byte (B/KB/MB/GB/TB)"
    echo "3. Conversor de unidades de Tempo (Segundos/Minutos/Horas)"
    echo "4. Conversor de Moedas (Euro/Dólar/Real/Ienes)"
    echo "5. Ver o histórico do MultiConverter"
    echo "6. Sair do Conversor (Exit)"
    echo
    read -p "Escolha uma opção (1-6): " conversion_type

    case $conversion_type in
        1) while true; do
            echo 
            echo "**** Conversor Unidades Comprimento ****"
            echo "1. Metros para Quilómetros" 
            echo "2. Quilómetros para Metros" 
            echo "3. Metros para Centímetros" 
            echo "4. Centímetros para Metros" 
            echo "5. Quilómetros para Centímetros" 
            echo "6. Centrímetros para Quilómetros" 
            echo "7. Voltar ao Menu Principal"
            echo "8. Sair do Conversor (Exit)"
            echo
            read -p "Escolha uma opção (1-8): " option   

            case $option in
                1)  
                    echo
                    read -p "Coloca um tamanho em Metros: " distance
                    result=$(metros_quilometros "$distance")
                    echo "$result"
                    ;;
                2)  
                    echo
                    read -p "Coloca um tamanho em Quilómetros: " distance
                    result=$(quilometros_metros "$distance")
                    echo "$result"
                    ;;
                3)  
                    echo
                    read -p "Coloca um tamanho em Metros: " distance
                    result=$(metros_centimetros "$distance")
                    echo "$result"
                    ;;
                4)  
                    echo
                    read -p "Coloca um tamanho em Centímetros: " distance
                    result=$(centimetros_metros "$distance")
                    echo "$result"
                    ;;
                5)  
                    echo
                    read -p "Coloca um tamanho em Quilómetros: " distance
                    result=$(quilometros_centimetros "$distance")
                    echo "$result"
                    ;;
                6)  
                    echo
                    read -p "Coloca um tamanho em Centímetros: " distance
                    result=$(centimetros_quilometros "$distance")
                    echo "$result"
                    ;;
                7)  
                    break
                    ;;
                8)  
                    echo
                    echo "**** A sair do MultiConverter ****" 
                    exit 0
                    ;;
                *)
                    echo
                    echo "**** Opção Inválida. Por Favor escolha entre 1 a 8 ****"
                    ;;
            esac
        done
        ;; 

        2) while true; do
            echo
            echo "**** Conversor Unidades Byte ****"
            echo "1. Bytes para Kilobytes"
            echo "2. Bytes para Megabytes"
            echo "3. Bytes para Gigabytes"
            echo "4. Bytes para Terabytes"
            echo "5. Megabytes para Bytes"
            echo "6. Gigabytes para Megabytes"
            echo "7. Voltar ao Menu Principal"
            echo "8. Sair do Conversor (Exit)"
            echo 
            read -p "Escolha uma opção (1-8): " option

            case $option in
                1)  
                    echo
                    read -p "Coloca um tamanho em bytes: " size
                    result=$(bytes_kilobytes "$size")
                    echo "$result"
                    ;;
                2)  
                    echo
                    read -p "Coloca um tamanho em bytes: " size
                    result=$(bytes_megabytes "$size")
                    echo "$result"
                    ;;
                3)  
                    echo
                    read -p "Coloca um tamanho em bytes:" size
                    result=$(bytes_gigabytes "$size")
                    echo "$result"
                    ;;
                4)  
                    echo
                    read -p "Coloca um tamanho em bytes: " size
                    result=$(bytes_terabytes "$size")
                    echo "$result"
                    ;;
                5)  
                    echo
                    read -p "Coloca um tamanho em megabytes: " size
                    result=$(megabytes_bytes "$size")
                    echo "$result"
                    ;;
                6)  
                    echo
                    read -p "Coloca um tamanho em gigabytes: " size
                    result=$(gigabytes_megabytes "$size")
                    echo "$result"
                    ;;
                7) 
                    break 
                    ;;
                8)  
                    echo
                    echo "**** A sair do MultiConverter ****" 
                    exit 0
                    ;;
                *)  
                    echo
                    echo "**** Opção Inválida. Por Favor escolha entre 1 a 8 ****"
                    ;;
            esac
        done
        ;;

        3) while true; do
            echo
            echo "Time Converter"
            echo "1. Hours to Minutes"
            echo "2. Hours to Seconds"
            echo "3. Minutes to Hours"
            echo "4. Minutes to Seconds"
            echo "5. Seconds to Minutes"
            echo
            read -p "Escolha uma opção (1-5): " option

            case $option in
                1)  
                    echo
                    read -p "Enter time in hours: " time
                    result=$(hours_to_minutes "$time")
                    echo "$result"
                    ;;
                2)  
                    echo
                    read -p "Enter time in hours: " time
                    result=$(hours_to_seconds "$time")
                    echo "$result"
                    ;;
                3)  
                    echo
                    read -p "Enter time in minutes: " time
                    result=$(minutes_to_hours "$time")
                    echo "$result"
                    ;;
                4)  
                    echo
                    read -p "Enter time in minutes: " time
                    result=$(minutes_to_seconds "$time")
                    echo "$result"
                    ;;
                5)  
                    echo
                    read -p "Enter time in seconds: " time
                    result=$(seconds_to_minutes "$time")
                    echo "$result"
                    ;;
                *)
                    echo
                    echo "Invalid option. Please choose 1-5."
                    ;;
            esac 
        done   
        ;;

        4) while true; do
            echo
            echo "Time Converter"
            echo "1. Hours to Minutes"
            echo "2. Hours to Seconds"
            echo "3. Minutes to Hours"
            echo "4. Minutes to Seconds"
            echo "5. Seconds to Minutes"
            echo
            read -p "Escolha uma opção (1-5): " option

       
            case $option in
                1)  
                    echo
                    read -p "Enter time in hours: " time
                    result=$(hours_to_minutes "$time")
                    echo "$result"
                    ;;
                2)  
                    echo
                    read -p "Enter time in hours: " time
                    result=$(hours_to_seconds "$time")
                    echo "$result"
                    ;;
                3)  
                    echo
                    read -p "Enter time in minutes: " time
                    result=$(minutes_to_hours "$time")
                    echo "$result"
                    ;;
                4)  
                    echo
                    read -p "Enter time in minutes: " time
                    result=$(minutes_to_seconds "$time")
                    echo "$result"
                    ;;
                5)  
                    echo
                    read -p "Enter time in seconds: " time
                    result=$(seconds_to_minutes "$time")
                    echo "$result"
                    save_to_file "$result"
                    ;;
                *)
                    echo
                    echo "Invalid option. Please choose 1-5." 
                    ;;
            esac
        done
        ;;

        5) 
        ;;

        6)
            echo
            echo "**** A sair do MultiConverter ****" 
            exit 0 
            ;;

        *)
            echo
            echo "**** Opção Inválida. Por Favor escolha entre 1 a 6 ****"
            ;;    
    esac
done 