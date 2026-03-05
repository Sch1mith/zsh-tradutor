# tradutor portugues inglês

function tra() {

  input="$*"
  
  [[ -z "$input" ]] && return

  
  if [[ "$1" == "en" ]]; then
    input="${@[2,-1]}"
    input_limpo=$(echo "$input" | iconv -f UTF-8 -t ASCII//TRANSLIT \
      2>/dev/null | tr -cd '[:alnum:] ')
    query="${input_limpo// /+}"
    url="https://translate.google.com/m?sl=en&tl=pt&q=${query}"
  else
    input_limpo=$(echo "$input" | iconv -f UTF-8 -t ASCII//TRANSLIT \
      2>/dev/null | tr -cd '[:alnum:] ')
    [[ -z "$input_limpo" ]] && input_limpo="$input"
    query="${input_limpo// /+}"
    url="https://translate.google.com/m?sl=pt&tl=en&q=${query}"
  fi 
  
  traducao=$(curl -s -A "Mozilla/5.0" "$url" | \
    sed -n 's/.*<div[^>]*class="result-container"[^>]*>\([^<]*\)<\/div>.*/\1/p')

  if [[ -n "$traducao" ]]; then
    echo "•••••"
    echo "tradução: $traducao"
    echo "•••••"
  else
    echo "Erro: não foi possivel traduzir"
  fi

  unset input query url traducao texto_limpo
}
