alias be='bundle exec'
alias clone='bundle exec rake clone_remote_db:production'
alias fs='foreman start'

function reset_test_db() {
  echo Dropping test database
  RAILS_ENV=test be rake db:drop
  echo Creating test database
  RAILS_ENV=test be rake db:create
  echo Applying migrations to test database
  RAILS_ENV=test be rake db:migrate
}

function reset_development_db() {
  echo Dropping development database
  be rake db:drop
  echo Creating development database
  be rake db:create
  echo Applying migrations to development database
  be rake db:migrate
}

function dcm_test_and_dev_dbs() {
  echo Dropping test and development databases
  be rake db:drop
  echo Creating test and development databases
  be rake db:create
  echo Applying migrations to test database
  RAILS_ENV=test be rake db:migrate
  echo Applying migrations to development database
  be rake db:migrate
}

function clone_migrate() {
  bundle exec rake clone_remote_db:production
  echo Applying migrations to development database
  bundle exec rake db:migrate
}

function prep_deploy() {
  git checkout master
  git pull
  npm run build
  git add public
  git commit -v
}
