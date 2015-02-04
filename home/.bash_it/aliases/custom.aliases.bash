alias gd='git diff'

alias gpo='git push origin $(git rev-parse --abbrev-ref HEAD)'

alias influxdb-cli="docker run --rm -it denderello/docker-influxdb-cli"
alias http='docker run -it --rm --net=host clue/httpie'

alias l="ls -lah"

alias go-gopath="cd $GOPATH/src"
alias go-home="cd ~"

go-code () {
  cd `go list -f '{{.Dir}}' $1`
}

go-gs () {
  go-code github.com/giantswarm/$1
}
