require "pry"
require "active_record"
require "sinatra"
require "sqlite3"

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'photography.db')

# So that ActiveRecord explains the SQL it's running in the logs.
ActiveRecord::Base.logger = ActiveSupport::Logger.new(STDOUT)

# Models
require_relative "models/photographer.rb"
require_relative "models/photo.rb"
require_relative "models/album.rb"

# Database
require_relative "database_setup.rb"

#Controllers
require_relative "controllers/main.rb"

# binding.pry
