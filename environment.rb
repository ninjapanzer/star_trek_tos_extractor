require 'active_record'
require 'sqlite3'
require 'awesome_print'

Dir.glob('./app/*').each do |folder|
  Dir.glob("#{folder}/*.rb").each do |file|
    require file
  end
end

Dir.glob('./app/*.rb').each do |file|
  require file
end


ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: 'db/star_trek_tos.sqlite3',
  pool: 5,
  timeout: 5_000
)
