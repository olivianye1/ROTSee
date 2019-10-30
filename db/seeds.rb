# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


more_cadets = [ {:lastName =>'Nye', :firstName => 'Olivia', :email => 'onye@tulane.edu', :phoneNumber => '8477701060', :school => 'Tulane University', :position => 'Cadet Wing Commander', :course => 'POC', :gradYear => 2020 , :flight => 'Alpha', :username => 'onye', :password => 'password'},
    {:lastName =>'Juenemann', :firstName => 'Riley', :email => 'rjuenemann@tulane.edu', :phoneNumber => '7204288077', :school => 'Tulane University', :position => 'Operations Group Commander', :course => 'POC', :gradYear => 2020 , :flight => 'Bravo', :username => 'rjuenemann', :password => 'password'},
    {:lastName =>'Dorsey', :firstName => 'Kennedy', :email => 'kdorsey3@tulane.edu', :phoneNumber => '5046384147', :school => 'Tulane University', :position => 'Mission Support Group Commander', :course => 'POC', :gradYear => 2020, :flight => 'Alpha', :username => 'kdorsey3', :password => 'password'},
    {:lastName => 'Hotsko', :firstName => 'Jessica', :email => 'jhotsko@tulane.edu', :phoneNumber => '4109243357', :school => 'Tulane University', :position => 'Squadron Commander', :course => 'POC', :gradYear => 2020, :flight => 'Bravo', :username => 'jhotsko',:password => 'password'},
    {:lastName =>'Dewitt', :firstName => 'Marie', :email => 'mdewitt@tulane.edu', :phoneNumber => '1230001234', :school => 'Tulane University', :position => 'Alpha Flight Commander', :course => 'POC', :gradYear => 2020 , :flight => 'Alpha', :username => 'mdewitt', :password => 'password'},
    {:lastName =>'Clark', :firstName => 'Kyra', :email => 'kclark7@tulane.edu', :phoneNumber => '4560004567', :school => 'Tulane University', :position => 'Bravo Flight Commander', :course => 'POC', :gradYear => 2021 , :flight => 'Bravo', :username => 'kclark7', :password => 'pwd'},
    {:lastName =>'Westlake', :firstName => 'Alexa', :email => 'awestlak@tulane.edu', :phoneNumber => '7890006789', :school => 'Tulane University', :position => 'Deputy Squadron Commander', :course => 'POC', :gradYear => 2021 , :flight => 'Alpha', :username => 'awestlak', :password => 'pwd1'},
    {:lastName => 'Wells', :firstName => 'Rachel', :email => 'rwells3@tulane.edu', :phoneNumber => '1110002222', :school => 'Tulane University', :position => 'MWR Officer', :course => 'POC', :gradYear => 2021 , :flight => 'Bravo', :username => 'rwells3', :password => 'pwd11'},
    {:lastName => 'Kurdia', :firstName => 'Anastasia', :email => 'akurdia@tulane.edu', :phoneNumber => '1111111111', :school => 'Tulane University', :position => 'GMCA', :course => 'GMC', :gradYear => 2022 , :flight => 'Alpha', :username => 'akurdia', :password => 'pwd11'},    
    {:lastName => 'Anne', :firstName => 'Carri', :email => 'canne@tulane.edu', :phoneNumber => '1111111111', :school => 'Tulane University', :position => 'Cadet', :course => 'GMC', :gradYear => 2022 , :flight => 'Bravo', :username => 'canne', :password => 'pwd'},
    {:lastName => 'Edward', :firstName => 'Nathan', :email => 'nedward@tulane.edu', :phoneNumber => '1119999111', :school => 'Tulane University', :position => 'Cadet', :course => 'GMC', :gradYear => 2022 , :flight => 'Alpha', :username => 'nedward', :password => 'pwd11'},
    {:lastName => 'Paige', :firstName => 'Allyson', :email => 'apaige@tulane.edu', :phoneNumber => '1111111111', :school => 'Tulane University', :position => 'Cadet', :course => 'GMC', :gradYear => 2022 , :flight => 'Bravo', :username => 'apaige', :password => 'pwd11'},
    {:lastName => 'Bildstein', :firstName => 'Joseph', :email => 'jbildstein@tulane.edu', :phoneNumber => '111111111', :school => 'Tulane University', :position => 'Cadet', :course => 'GMC', :gradYear => 2022 , :flight => 'Alpha', :username => 'jbildstein', :password => 'pwd11'},
    {:lastName => 'Grant', :firstName => 'Daniel', :email => 'dgrant@tulane.edu', :phoneNumber => '9999999999', :school => 'Tulane University', :position => 'Cadet', :course => 'GMC', :gradYear => 2023 , :flight => 'Bravo', :username => 'dgrant', :password => 'pwd11'},
    {:lastName => 'Elliot', :firstName => 'Mason', :email => 'melliot@tulane.edu', :phoneNumber => '1111111111', :school => 'Tulane University', :position => 'Cadet', :course => 'GMC', :gradYear => 2023 , :flight => 'Alpha', :username => 'melliot', :password => 'pwd11'},
    {:lastName => 'Louise', :firstName => 'Jaime', :email => 'jlouise@tulane.edu', :phoneNumber => '1111111111', :school => 'Tulane University', :position => 'Cadet', :course => 'GMC', :gradYear => 2023 , :flight => 'Bravo', :username => 'jlouise', :password => 'pwd11'},
    {:lastName => 'James', :firstName => 'Landon', :email => 'ljames@tulane.edu', :phoneNumber => '1111111111', :school => 'Tulane University', :position => 'Cadet', :course => 'GMC', :gradYear => 2023 , :flight => 'Alpha', :username => 'ljames', :password => 'pwd11'},
    {:lastName => 'Ryan', :firstName => 'Chase', :email => 'cryan@tulane.edu', :phoneNumber => '1111111111', :school => 'Tulane University', :position => 'Cadet', :course => 'GMC', :gradYear => 2023 , :flight => 'Bravo', :username => 'cryan', :password => 'pwd11'},
    {:lastName => 'Day', :firstName => 'Jessica', :email => 'jday@tulane.edu', :phoneNumber => '1111111111', :school => 'Tulane University', :position => 'Cadet', :course => 'GMC', :gradYear => 2023 , :flight => 'Alpha', :username => 'jday', :password => 'pwd11'},
    {:lastName => 'Miller', :firstName => 'Nicholas', :email => 'nmiller@tulane.edu', :phoneNumber => '1111111111', :school => 'Tulane University', :position => 'Cadet', :course => 'GMC', :gradYear => 2023 , :flight => 'Bravo', :username => 'nmiller', :password => 'pwd11'} ]
    
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

@cadets = Cadet.all
@events = Event.all

@events.each do |event|
    @cadets.each do |cadet|
        Attendance.create!(:attended => 'Present', :cadet_id => cadet.id, :event_id => event.id)
    end
end