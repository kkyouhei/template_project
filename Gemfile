source 'https://rubygems.org'

gem 'rails', '4.2.5'

# フロント関連のgem
gem 'slim-rails'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0' # JavaScriptのソースを軽量化を
gem 'therubyracer', platforms: :ruby # rubyからv8を扱えるようにする

gem 'jquery-rails'
gem 'coffee-rails', '~> 4.1.0'
gem 'turbolinks'

# DB関連のgem
gem 'mysql2'

# AWS
gem 'aws-sdk', '~>2'

# その他
gem 'jbuilder', '~> 2.0'

group :production, :staging do
    gem 'unicorn' # HTTPサーバ
end

group :development, :test do
  # デバック関連のgem
  gem 'pry-rails' # railsでpryが使える
  gem 'pry-byebug' # pryでデバックコマンドが使える
  gem 'pry-doc'
  gem 'pry-remote'
end

group :development do
  # デバック関連のgem
  gem 'better_errors' # エラー画面を見やすくする
  gem 'binding_of_caller' # better_errorsのエラー画面でREPLが使える

  # チューニングのためのgem
  gem 'bullet' # N+1問題を検出
  gem 'rack-mini-profiler', require: false # パフォーマンスチェック

  # デプロイ系
  gem 'capistrano'
  gem 'capistrano-rails'
  gem 'capistrano-rbenv'
  gem 'capistrano-bundler'
  gem 'capistrano3-unicorn'

  # その他
  gem 'spring' # 必要なライブラリ先読み
  gem 'spring-commands-rspec' # springをrspecで使用するためのgem
  gem 'rename' # プロジェクト名を変更

end

# ドキュメント関連
group :doc do
  gem 'yard', require: false
end
