# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

more_cadets = [
    {:cadetID => 1, :lastName =>'Nye1', :firstName => 'Olivia', :email => 'onye@tulane.edu', :phoneNumber => '8477701060', :school => 'Tulane University', :position => 'Flight Commander', :course => 'POC', :gradYear => 2020 , :flight => 'Alpha', :username => 'onye', :password => 'password'},
    
]
    
more_cadets.each do |cadet|
    Cadet.create!(cadet)
end
