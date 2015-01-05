# require 'active_record'


# ActiveRecord::Base.establish_connection({:adapter => "postgresql", :host => "localhost", :username => "root", :database => "project"})

require 'active_record'

ActiveRecord::Base.establish_connection('postgresql://' + ENV["DB_INFO"]  + '@104.236.99.76/project')

ActiveRecord::Base.logger = Logger.new(STDOUT)  