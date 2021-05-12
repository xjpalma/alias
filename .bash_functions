## change dir and list
function cl() {
    DIR="$*";
    if [ $# -lt 1 ]; then
        DIR=$HOME
    fi
    builtin cd "${DIR}" && \
    # use your preferred ls command
        ll
}

## archive extractor
ex (){
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1     ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

## configure proxy
function proxy_on() {
  export no_proxy="localhost,127.0.0.1,localaddress,.localdomain.com"

  if (( $# > 0 )); then
    local proxy="http://$1"
    export http_proxy=$proxy \
           https_proxy=$proxy \
           ftp_proxy=$proxy \
           rsync_proxy=$proxy \
           socks_proxy=$proxy \
           HTTP_PROXY=$proxy \
           HTTPS_PROXY=$proxy \
           FTP_PROXY=$proxy \
           RSYNC_PROXY=$proxy \
           SOCKS_PROXY=$proxy
    echo "Proxy environment variable set."
    env | grep proxy
    return 0
  fi

  echo -n "username: "; read username
  if [[ $username != "" ]]; then
    echo -n "password: "
    read -es password
    local pre="$username:$password@"
  fi
  echo -n "server: "; read server
  echo -n "port: "; read port

  local proxy="http://$pre$server:$port"
  export http_proxy=$proxy \
         https_proxy=$proxy \
         ftp_proxy=$proxy \
         rsync_proxy=$proxy \
         socks_proxy=$proxy \
         HTTP_PROXY=$proxy \
         HTTPS_PROXY=$proxy \
         FTP_PROXY=$proxy \
         RSYNC_PROXY=$proxy \
         SOCKS_PROXY=$proxy
}

function proxy_off(){
  unset http_proxy https_proxy ftp_proxy rsync_proxy socks_proxy \
        HTTP_PROXY HTTPS_PROXY FTP_PROXY RSYNC_PROXY SOCKS_PROXY

  echo -e "Proxy environment variables removed."
}
