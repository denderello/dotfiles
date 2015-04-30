alias gd='git diff'

alias gpo='git push origin $(git rev-parse --abbrev-ref HEAD)'

alias influxdb-cli="docker run --rm -it --net=host denderello/docker-influxdb-cli"
alias http='docker run -it --rm --net=host clue/httpie'
alias wrk='docker run -it --rm --net=host -v `pwd`:/data williamyeh/wrk:4.0.1'

alias l="ls -lah"

alias go-projects="cd $PROJECT_PATH"
alias go-gopath="cd $GOPATH/src"
alias go-home="cd ~"

go-code () {
  cd `go list -f '{{.Dir}}' $1`
}

go-gs () {
  go-code github.com/giantswarm/$1
}

install-to-home () {
  cp $1 ~/bin/$1
}
