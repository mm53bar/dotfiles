function kram () {  # Gets a URL page and converts it to Markdown by using FuckYeahMarkDown.com.
  local -r API_URL="http://fuckyeahmarkdown.com/go/"
  if [[ $# < 1 ]] ; then printf "Missing URL.\nUse: kram <URL>\n" ; return 1 ; fi
  curl -s "${API_URL}?u=${1}" > $(basename ${1}).md || printf "Error, check URI or connectivity.\n"
}

alias kram=kram
