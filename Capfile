require 'aws-sdk'
Aws::EC2::Resource

# Load DSL and set up stages
require 'capistrano/setup'

# Include default deployment tasks
require 'capistrano/deploy'

require 'capistrano/rbenv'
set :rbenv_type, :user
set :rbenv_ruby, '2.3.0'
require 'capistrano/bundler'
require 'capistrano/rails'
require 'capistrano/rails/assets'
require 'capistrano/rails/migrations'
require 'capistrano3/unicorn'

# Load custom tasks from `lib/capistrano/tasks` if you have any defined
Dir.glob('lib/capistrano/tasks/*.rake').each { |r| import r }
