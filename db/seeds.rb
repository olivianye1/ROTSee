# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


more_cadets = [    {:cadetID => 0, :lastName =>'Nye', :firstName => 'Olivia', :email => 'onye@tulane.edu', :phoneNumber => '8477701060', :school => 'Tulane University', :position => 'Flight Commander', :course => 'POC', :gradYear => 2020 , :flight => 'Alpha', :username => 'onye', :password => 'password'},
    {:cadetID => 1, :lastName =>'Juenemann', :firstName => 'Riley', :email => 'rjuenemann@tulane.edu', :phoneNumber => '7204288077', :school => 'Tulane University', :position => 'Flight Commander', :course => 'GMC', :gradYear => 2021 , :flight => 'Bravo', :username => 'rjuenemann', :password => 'password'},
    {:cadetID => 2, :lastName =>'Dorset', :firstName => 'Kennedy', :email => 'kdorsey3@tulane.edu', :phoneNumber => '5046384147', :school => 'Tulane University', :position => 'Flight Commander', :course => 'POC', :gradYear => 2020, :flight => 'Alpha', :username => 'kdorsey3', :password => 'password'},
    {:cadetID => 3, :lastName => 'Hotsko', :firstName => 'Jessica', :email => 'jhotsko@tulane.edu', :phoneNumber => '4109243357', :school => 'Tulane University', :position => 'Flight Commander', :course => 'GMC', :gradYear => 2020, :flight => 'Bravo', :username => 'jhotsko',:password => 'password'},
    {:cadetID => 4, :lastName =>'Dewitt', :firstName => 'Marie', :email => 'mdewitt@tulane.edu', :phoneNumber => '1230001234', :school => 'Tulane University', :position => 'Flight Captain', :course => 'POC', :gradYear => 2020 , :flight => 'Alpha', :username => 'mdewitt', :password => 'password'},
    {:cadetID => 5, :lastName =>'Clark', :firstName => 'Kyra', :email => 'kclark7@tulane.edu', :phoneNumber => '4560004567', :school => 'Tulane University', :position => 'Cadet', :course => 'GMC', :gradYear => 2020 , :flight => 'Bravo', :username => 'kclark7', :password => 'pwd'},
    {:cadetID => 6, :lastName =>'Westlake', :firstName => 'Alexa', :email => 'awestlak@tulane.edu', :phoneNumber => '7890006789', :school => 'Tulane University', :position => 'Commander', :course => 'POC', :gradYear => 2020 , :flight => 'Bravo', :username => 'awestlak', :password => 'pwd1'},
    {:cadetID => 7, :lastName => 'Wells', :firstName => 'Rachel', :email => 'rwells3@tulane.edu', :phoneNumber => '1110002222', :school => 'Tulane University', :position => 'Cadet', :course => 'GMC', :gradYear => 2020 , :flight => 'Alpha', :username => 'rwells3', :password => 'pwd11'},
    {:cadetID => 8, :lastName => 'Kurdia', :firstName => 'Anastasia', :email => 'akurdia@tulane.edu', :phoneNumber => '1111111111', :school => 'Tulane University', :position => 'Professor', :course => 'POC', :gradYear => 2019 , :flight => 'Bravo', :username => 'akurdia', :password => 'pwd11'},    
    {:cadetID => 9, :lastName => 'MyLast', :firstName => 'myFirst', :email => 'myName@tulane.edu', :phoneNumber => '1111111111', :school => 'Tulane University', :position => 'Cadet', :course => 'GMC', :gradYear => 2022 , :flight => 'Bravo', :username => 'myName', :password => 'pwd'},
    {:cadetID => 10, :lastName => 'Cadet', :firstName => 'sample', :email => 'scadet@tulane.edu', :phoneNumber => '1119999111', :school => 'Tulane University', :position => 'Cadet', :course => 'POC', :gradYear => 2023 , :flight => 'Bravo', :username => 'scadet', :password => 'pwd11'},
    {:cadetID => 11, :lastName => 'Sample', :firstName => 'cadet', :email => 'csample@tulane.edu', :phoneNumber => '1111111111', :school => 'Tulane University', :position => 'Cadet', :course => 'POC', :gradYear => 2023 , :flight => 'Bravo', :username => 'csample', :password => 'pwd11'},
    {:cadetID => 12, :lastName => 'Lastly', :firstName => 'firstly', :email => 'flastly@tulane.edu', :phoneNumber => '111111111', :school => 'Tulane University', :position => 'Cadet', :course => 'POC', :gradYear => 2022 , :flight => 'Alpha', :username => 'flastly', :password => 'pwd11'},
    {:cadetID => 13, :lastName => 'Studio', :firstName => 'Software', :email => 'sstudio@tulane.edu', :phoneNumber => '9999999999', :school => 'Tulane University', :position => 'Cadet', :course => 'POC', :gradYear => 2022 , :flight => 'Alpha', :username => 'sstudio', :password => 'pwd11'},
    {:cadetID => 14, :lastName => 'mcFake', :firstName => 'fake', :email => 'ffake@tulane.edu', :phoneNumber => '1111111111', :school => 'Tulane University', :position => 'Cadet', :course => 'POC', :gradYear => 2022 , :flight => 'Alpha', :username => 'ffake', :password => 'pwd11'},
    {:cadetID => 15, :lastName => 'Saathoff', :firstName => 'Dustin', :email => 'dsaathoff@tulane.edu', :phoneNumber => '1111111111', :school => 'Tulane University', :position => 'Cadet', :course => 'GMC', :gradYear => 2022 , :flight => 'Alpha', :username => 'dsaathoff', :password => 'pwd11'},
    {:cadetID => 16, :lastName => 'Swindall', :firstName => 'Allyson', :email => 'aswindall@tulane.edu', :phoneNumber => '1111111111', :school => 'Tulane University', :position => 'Cadet', :course => 'GMC', :gradYear => 2022 , :flight => 'Bravo', :username => 'aswindall', :password => 'pwd11'},
    {:cadetID => 17, :lastName => 'Zzz', :firstName => 'y', :email => 'yzzz@tulane.edu', :phoneNumber => '1111111111', :school => 'Tulane University', :position => 'Cadet', :course => 'POC', :gradYear => 2022 , :flight => 'Alpha', :username => 'yzzz', :password => 'pwd11'},
    {:cadetID => 18, :lastName => 'Day', :firstName => 'Jessica', :email => 'jday@tulane.edu', :phoneNumber => '1111111111', :school => 'Tulane University', :position => 'Cadet', :course => 'GMC', :gradYear => 2022 , :flight => 'Bravo', :username => 'jday', :password => 'pwd11'},
    {:cadetID => 19, :lastName => 'Miller', :firstName => 'Nicholas', :email => 'nmiller@tulane.edu', :phoneNumber => '1111111111', :school => 'Tulane University', :position => 'Cadet', :course => 'GMC', :gradYear => 2022 , :flight => 'Alpha', :username => 'nmiller', :password => 'pwd11'},
    
    
]
    
    
    

    
more_cadets.each do |cadet|
    Cadet.create!(cadet)
end
