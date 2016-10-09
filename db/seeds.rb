# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require "csv"
CSV.foreach('db/usd.csv') do |row|

   Chart.create(:currency_id => row[0], :date => row[1], :start_price => row[2], :high_price => row[3], :low_price => row[4], :end_price => row[5])

 
end