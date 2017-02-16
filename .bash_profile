respell() {
  killall AppleSpell
}

rmds(){
  # rm ~/.DS_Store
  find . -name ".DS_Store" -type f -print0 | xargs -0 /bin/rm -f
}

dockerrmi() {
  # Delete all containers
  docker rm $(docker ps -a -q -f dangling=true)
  # Delete all images
  docker rmi -f $(docker images -q -f dangling=true)
}

dockerrmiall() {
  docker rmi -f $(docker images -q)
}

gitrm(){
  git br | grep -v master | grep -v release | xargs git br -d
}

gogo() {
  cd $GOPATH
}

gome() {
  cd $GOPATH/src/github.com/kogai
}

gosb() {
  go run $GOPATH/src/github.com/kogai/sandbox/main.go
}

goatom(){
  cd ~/.atom/packages
}

domigrate() {
  docker-compose run rails bundle exec rake db:migrate
}

export GOROOT_BOOTSTRAP=$GOROOT
