# config valid only for current version of Capistrano
lock '3.4.0'

set :application, 'template_project'
set :repo_url, 'git@github.com:kkyouhei/template_project.git'
set :deploy_to, "/var/www/#{fetch :application}"
set :scm, :git
set :log_level, :debug
set :pty, true
set :linked_dirs, %w{log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system public/assets}
set :default_env, {PATH: "$HOME/.rbenv/bin:$PATH" }
set :keep_releases, 5
set :user, "ec2-user"
set :ssh_options, {
  keys: %w{~/.ssh/test_server.pem},
  auth_methods: %w{publickey},
}


after 'deploy:publishing', 'deploy:restart'
namespace :deploy do
  # TODO デプロイ時のタスクを作成
  # Unicorn再起動
  # dotoenvをs3からダウンロード
end
