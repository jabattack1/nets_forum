require 'active_record'


ActiveRecord::Base.establish_connection({:adapter => "postgresql", :host => "localhost", :username => "peterhahn", :database => "project"})