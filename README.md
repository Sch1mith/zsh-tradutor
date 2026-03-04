# plugin tradutor

Um plugin simples que traduz textos direto do terminal de inglês para português e vice versa usando o google tradutor

não use acentos ou caracteres especiais
plugin feito para traduções rápidas, não mande blocos de texto muito grande ou use mais de 50 vezes ao dia
***

Dependencias: 

 - Curl
 - oh my Zsh!
***

#### Instalando:

baixe e coloque o plugin em home/<user>/.oh-my-zsh/custom/plugins/zsh-tradutor
depois adicione o plugin na lista de plugins do .zshrc
separe os plugins por espaço
exemplo: `plugins=(git zsh-tradutor)`
***

#### Como usar: 

default: português -> inglês

    `tra` + <termo em português>: retorna tradução em inglês
    `tra en` + <termo em inglês>: retorna tradução em português
