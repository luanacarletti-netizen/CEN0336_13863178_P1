#!/bin/bash

# Mostra o diretório atual
if ! pwd; then
    echo "Erro ao mostrar o diretório atual."
    exit 1
fi

# Verifica se a pasta HOME existe e pode ser acessada
if [ ! -d "$HOME" ] || [ ! -r "$HOME" ]; then
    echo "Erro: não foi possível acessar a pasta HOME."
    exit 1
fi

# Lista os arquivos e pastas da HOME e salva no arquivo lista_HOME.txt
if ! ls -la "$HOME" > lista_HOME.txt; then
    echo "Erro ao criar a lista dos arquivos da pasta HOME."
    exit 1
fi

# Mostra a data e o horário atuais
if ! date; then
    echo "Erro ao mostrar a data e o horário."
    exit 1
fi

# Informa que o script terminou corretamente
echo "Script executado com sucesso!"


# Primeira parte — Identificação do diretório
#      O comando pwd mostra o caminho do diretório em que o script está sendo executado. A estrutura if ! verifica se o comando apresentou algum erro. Caso isso aconteça, o programa exibe uma mensagem e encerra com exit 1.
# Segunda parte — Verificação da pasta HOME
#      A variável $HOME indica a pasta pessoal do usuário no Linux. O código verifica se essa pasta existe e se pode ser lida. Se alguma dessas condições não for atendida, o script mostra uma mensagem de erro e para a execução.
# Terceira parte — Criação do arquivo lista_HOME.txt
#      O comando ls -la "$HOME" lista os arquivos e diretórios da pasta pessoal, incluindo os arquivos ocultos e seus detalhes. O símbolo > redireciona essa listagem para o arquivo lista_HOME.txt, em vez de exibi-la na tela. Se o arquivo já existir, seu conteúdo será substituído.
#      O if ! verifica se a listagem foi realizada corretamente. Se ocorrer algum problema, uma mensagem de erro será exibida.
# Quarta parte — Exibição da data
#      O comando date mostra a data e o horário atuais no terminal. Caso o comando falhe, o script informa o erro.
# Quinta parte — Finalização
#      Se todos os comandos forem executados corretamente, será exibida a mensagem Script executado com sucesso!, confirmando que o programa chegou ao final.
