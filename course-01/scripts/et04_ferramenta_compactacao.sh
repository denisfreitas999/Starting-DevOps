#! /bin/bash
read -p "Entre com a operação desejada: 'compactar' ou 'descompactar': " operacao
case "$operacao" in
        "compactar")
                read -p "Nome do arquivo final (.tar.gz): " arquivo_saida
                read -p "Lista de arquivos separados por espaço: " arquivos
                tar -czf "$arquivo_saida" $arquivos
                echo "Compactados com sucesso em $arquivo_saida"
        ;;
        "descompactar")
                read -p "Nome do arquivo a descompactar (.tar.gz): " arquivo
                read -p "Informe o diretório de destino: " diretorio
                tar -xzf "$arquivo" -C "$diretorio"
                echo "Descompactado com sucesso em $diretorio"
        ;;
        *)
        echo "Operação inválida!"
        echo "Selecione compactar ou descompactar"
        exit 1
        ;;
esac