alias gd='git diff'

alias gpo='git push origin $(git rev-parse --abbrev-ref HEAD)'

alias jq="docker run --rm -i realguess/jq:latest jq"
alias influxdb-cli="docker run --rm -it --net=host denderello/docker-influxdb-cli"
alias http='docker run -it --rm --net=host clue/httpie'
alias wrk='docker run -it --rm --net=host -v `pwd`:/data williamyeh/wrk:4.0.1'
alias csysdig='docker run -it --rm --name=sysdig-$(uuidgen) --privileged -v /var/run/docker.sock:/host/var/run/docker.sock -v /dev:/host/dev -v /proc:/host/proc:ro -v /boot:/host/boot:ro -v /lib/modules:/host/lib/modules:ro -v /usr:/host/usr:ro sysdig/sysdig csysdig'

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
