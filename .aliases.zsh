alias be='bundle exec'
alias clone='bundle exec rake clone_remote_db:production'
alias fs='foreman start'

function reset_test_db() {
  RAILS_ENV=test be rake db:drop
  RAILS_ENV=test be rake db:create
  RAILS_ENV=test be rake db:migrate
}

function clone_migrate() {
  bundle exec rake clone_remote_db:production
  bundle exec rake db:migrate
}
