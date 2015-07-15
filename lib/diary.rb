require 'lotus/model'
Dir["#{ __dir__ }/diary/**/*.rb"].each { |file| require_relative file }

Lotus::Model.configure do
  ##
  # Database adapter
  #
  # Available options:
  #
  #  * Memory adapter
  #    adapter type: :memory, uri: 'memory://localhost/diary_development'
  #
  #  * SQL adapter
  #    adapter type: :sql, uri: 'sqlite://db/diary_development.sqlite3'
  #    adapter type: :sql, uri: 'postgres://localhost/diary_development'
  #    adapter type: :sql, uri: 'mysql://localhost/diary_development'
  #
  adapter type: :sql, uri: ENV['DIARY_DATABASE_URL']

  ##
  # Migrations
  #
  migrations 'db/migrations'
  schema     'db/schema.sql'

  ##
  # Database mapping
  #
  # Intended for specifying application wide mappings.
  #
  # You can specify mapping file to load with:
  #
  # mapping "#{__dir__}/config/mapping"
  #
  # Alternatively, you can use a block syntax like the following:
  #
  mapping do
   
   
    collection :entries do
      entity     Entry
      repository EntryRepository
    
      attribute :id,   Integer
      attribute :title, String
      attribute :author, String
      attribute :description, String
      attribute :created_at, DateTime
      attribute :updated_at, DateTime
    end
  end
end.load!
