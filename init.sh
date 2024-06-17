alias rails="bundle exec rails $*"
alias db_create="rails db:create"
bundle () {
    docker-compose run app bundle $*
}

