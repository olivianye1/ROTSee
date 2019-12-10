# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


more_cadets = [ {:lastName =>'Nye', :firstName => 'Olivia', :email => 'rotseetest@gmail.com', :phoneNumber => '8477701060', :school => 'Tulane University', :position => 'Cadet Wing Commander', :course => 'POC', :gradYear => 2020 , :flight => 'Alpha', :username => 'onye', :password => 'password', :approved => true},
    {:lastName =>'Juenemann', :firstName => 'Riley', :email => 'rotseetest@gmail.com', :phoneNumber => '7204288077', :school => 'Tulane University', :position => 'Operations Group Commander', :course => 'POC', :gradYear => 2020 , :flight => 'Bravo', :username => 'rjuenemann', :password => 'password', :approved => true},
    {:lastName =>'Dorsey', :firstName => 'Kennedy', :email => 'rotseetest@gmail.com', :phoneNumber => '5046384147', :school => 'Tulane University', :position => 'Mission Support Group Commander', :course => 'POC', :gradYear => 2020, :flight => 'Alpha', :username => 'kdorsey3', :password => 'password', :approved => true},
    {:lastName => 'Hotsko', :firstName => 'Jessica', :email => 'rotseetest@gmail.com', :phoneNumber => '4109243357', :school => 'Tulane University', :position => 'Squadron Commander', :course => 'POC', :gradYear => 2020, :flight => 'Bravo', :username => 'jhotsko',:password => 'password', :approved => true},
    {:lastName =>'Dewitt', :firstName => 'Marie', :email => 'rotseetest@gmail.com', :phoneNumber => '1230001234', :school => 'Tulane University', :position => 'Alpha Flight Commander', :course => 'POC', :gradYear => 2020 , :flight => 'Alpha', :username => 'mdewitt', :password => 'password', :approved => true},
    {:lastName =>'Clark', :firstName => 'Kyra', :email => 'rotseetest@gmail.com', :phoneNumber => '4560004567', :school => 'Tulane University', :position => 'Bravo Flight Commander', :course => 'POC', :gradYear => 2021 , :flight => 'Bravo', :username => 'kclark7', :password => 'password', :approved => true},
    {:lastName =>'Westlake', :firstName => 'Alexa', :email => 'rotseetest@gmail.com', :phoneNumber => '7890006789', :school => 'Tulane University', :position => 'Deputy Squadron Commander', :course => 'POC', :gradYear => 2021 , :flight => 'Alpha', :username => 'awestlak', :password => 'password', :approved => true},
    {:lastName => 'Wells', :firstName => 'Rachel', :email => 'rotseetest@gmail.com', :phoneNumber => '1110002222', :school => 'Tulane University', :position => 'MWR Officer', :course => 'POC', :gradYear => 2021 , :flight => 'Bravo', :username => 'rwells3', :password => 'password', :approved => true},
    {:lastName => 'Kurdia', :firstName => 'Anastasia', :email => 'rotseetest@gmail.com', :phoneNumber => '1111111111', :school => 'Tulane University', :position => 'GMCA', :course => 'GMC', :gradYear => 2022 , :flight => 'Alpha', :username => 'akurdia', :password => 'password', :approved => true},    
    {:lastName => 'Anne', :firstName => 'Carri', :email => 'rotseetest@gmail.com', :phoneNumber => '1111111111', :school => 'Tulane University', :position => 'Cadet', :course => 'GMC', :gradYear => 2022 , :flight => 'Bravo', :username => 'canne', :password => 'password', :approved => true},
    {:lastName => 'Edward', :firstName => 'Nathan', :email => 'rotseetest@gmail.com', :phoneNumber => '1119999111', :school => 'Tulane University', :position => 'Cadet', :course => 'GMC', :gradYear => 2022 , :flight => 'Alpha', :username => 'nedward', :password => 'password', :approved => true},
    {:lastName => 'Paige', :firstName => 'Allyson', :email => 'rotseetest@gmail.com', :phoneNumber => '1111111111', :school => 'Tulane University', :position => 'Cadet', :course => 'GMC', :gradYear => 2022 , :flight => 'Bravo', :username => 'apaige', :password => 'password', :approved => true},
    {:lastName => 'Edward', :firstName => 'Joseph', :email => 'rotseetest@gmail.com', :phoneNumber => '111111111', :school => 'Tulane University', :position => 'Cadet', :course => 'GMC', :gradYear => 2022 , :flight => 'Alpha', :username => 'jbildstein', :password => 'password', :approved => true},
    {:lastName => 'Grant', :firstName => 'Daniel', :email => 'rotseetest@gmail.com', :phoneNumber => '9999999999', :school => 'Tulane University', :position => 'Cadet', :course => 'GMC', :gradYear => 2023 , :flight => 'Bravo', :username => 'dgrant', :password => 'password', :approved => true},
    {:lastName => 'Elliot', :firstName => 'Mason', :email => 'rotseetest@gmail.com', :phoneNumber => '1111111111', :school => 'Tulane University', :position => 'Cadet', :course => 'GMC', :gradYear => 2023 , :flight => 'Alpha', :username => 'melliot', :password => 'password', :approved => true},
    {:lastName => 'Louise', :firstName => 'Jaime', :email => 'rotseetest@gmail.com', :phoneNumber => '1111111111', :school => 'Tulane University', :position => 'Cadet', :course => 'GMC', :gradYear => 2023 , :flight => 'Bravo', :username => 'jlouise', :password => 'password', :approved => true},
    {:lastName => 'James', :firstName => 'Landon', :email => 'rotseetest@gmail.com', :phoneNumber => '1111111111', :school => 'Tulane University', :position => 'Cadet', :course => 'GMC', :gradYear => 2023 , :flight => 'Alpha', :username => 'ljames', :password => 'password', :approved => true},
    {:lastName => 'Ryan', :firstName => 'Chase', :email => 'rotseetest@gmail.com', :phoneNumber => '1111111111', :school => 'Tulane University', :position => 'Cadet', :course => 'GMC', :gradYear => 2023 , :flight => 'Bravo', :username => 'cryan', :password => 'password', :approved => true},
    {:lastName => 'Day', :firstName => 'Jessica', :email => 'jrotseetest@gmail.com', :phoneNumber => '1111111111', :school => 'Tulane University', :position => 'Cadet', :course => 'GMC', :gradYear => 2023 , :flight => 'Alpha', :username => 'jday', :password => 'password', :approved => true},
    {:lastName => 'Miller', :firstName => 'Nicholas', :email => 'rotseetest@gmail.com', :phoneNumber => '1111111111', :school => 'Tulane University', :position => 'Cadet', :course => 'GMC', :gradYear => 2023 , :flight => 'Bravo', :username => 'nmiller', :password => 'password', :approved => true} ]
    
more_cadets.each do |cadet|
    Cadet.create!(cadet)
end

more_events =  [ {:eventDate => Date.new(2019, 10, 17), :primaryType => "PT", :subType => "strength", :details => "Details" }, 
{:eventDate => Date.new(2019, 10, 16), :primaryType => "LLAB", :subType => "none", :details => "Details"},
{:eventDate => Date.new(2019, 10, 15), :primaryType => "PT", :subType => "cardio", :details => "Details"},
{:eventDate => Date.new(2019, 10, 10), :primaryType => "PT", :subType => "strength", :details => "Details"},
{:eventDate => Date.new(2019, 10, 9), :primaryType => "LLAB", :subType => "none", :details => "Details"},
{:eventDate => Date.new(2019, 10, 8), :primaryType => "PT", :subType => "cardio", :details => "Details"},
{:eventDate => Date.new(2019, 10, 3), :primaryType => "PT", :subType => "strength", :details => "Details"},
{:eventDate => Date.new(2019, 10, 2), :primaryType => "LLAB", :subType => "none", :details => "Details"},
{:eventDate => Date.new(2019, 10, 1), :primaryType => "PT", :subType => "cardio", :details => "Details"},
{:eventDate => Date.new(2019, 9, 26), :primaryType => "PT", :subType => "strength", :details => "Details"},
{:eventDate => Date.new(2019, 9, 25), :primaryType => "LLAB", :subType => "none", :details => "Details"},
{:eventDate => Date.new(2019, 9, 24), :primaryType => "PT", :subType => "cardio", :details => "Details"},
{:eventDate => Date.new(2019, 9, 19), :primaryType => "PT", :subType => "strength", :details => "Details"},
{:eventDate => Date.new(2019, 9, 18), :primaryType => "LLAB", :subType => "none", :details => "Details"},
{:eventDate => Date.new(2019, 9, 17), :primaryType => "PT", :subType => "cardio", :details => "Details"},
{:eventDate => Date.new(2019, 9, 12), :primaryType => "PT", :subType => "strength", :details => "Details"},
{:eventDate => Date.new(2019, 9, 11), :primaryType => "LLAB", :subType => "none", :details => "Details"},
{:eventDate => Date.new(2019, 9, 10), :primaryType => "PT", :subType => "cardio", :details => "Details"},
{:eventDate => Date.new(2019, 9, 5), :primaryType => "PT", :subType => "strength", :details => "Details"},
{:eventDate => Date.new(2019, 9, 4), :primaryType => "LLAB", :subType => "none", :details => "Details"} ]

more_events.each do |event|
    Event.create!(event)
end

@cadets = Cadet.all.order(:lastName)
@events = Event.all

@events.each do |event|
    @cadets.each do |cadet|
        Attendance.create!(:attended => 1, :cadet_id => cadet.id, :event_id => event.id)
    end
end