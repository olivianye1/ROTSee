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
    {:lastName => 'Miller', :firstName => 'Nicholas', :email => 'rotseetest@gmail.com', :phoneNumber => '1111111111', :school => 'Tulane University', :position => 'Cadet', :course => 'GMC', :gradYear => 2023 , :flight => 'Bravo', :username => 'nmiller', :password => 'password', :approved => true},
    {:lastName => 'McDonald', :firstName => 'Travis', :email => 'rotseetest@gmail.com', :phoneNumber => '1111111111', :school => 'Tulane University', :position => 'Cadet', :course => 'GMC', :gradYear => 2022 , :flight => 'Bravo', :username => 'tmcdonald', :password => 'password', :approved => false},
    {:lastName => 'Doerr', :firstName => 'Jay', :email => 'rotseetest@gmail.com', :phoneNumber => '1111111111', :school => 'Tulane University', :position => 'Cadet', :course => 'GMC', :gradYear => 2023 , :flight => 'Bravo', :username => 'jdoerr', :password => 'password', :approved => false}]
    
more_cadets.each do |cadet|
    Cadet.create!(cadet)
end

more_events =  [ {:eventDate => Date.new(2019, 12, 17), :primaryType => "PT", :subType => "strength", :details => "Bench 3 sets of 10 reps" }, 
{:eventDate => Date.new(2019, 12, 16), :primaryType => "LLAB", :subType => "none", :details => "Drill and Ceremony"},
{:eventDate => Date.new(2019, 12, 19), :primaryType => "PT", :subType => "cardio", :details => "Run 3 miles"},
{:eventDate => Date.new(2019, 12, 10), :primaryType => "PT", :subType => "strength", :details => "Squat 5 sets of 5 reps"},
{:eventDate => Date.new(2019, 12, 9), :primaryType => "LLAB", :subType => "none", :details => "Squad Tactics"},
{:eventDate => Date.new(2019, 12, 12), :primaryType => "PT", :subType => "cardio", :details => "Sprints"},
{:eventDate => Date.new(2019, 12, 3), :primaryType => "PT", :subType => "strength", :details => "PR day"},
{:eventDate => Date.new(2019, 12, 2), :primaryType => "LLAB", :subType => "none", :details => "Communication and Reporting"},
{:eventDate => Date.new(2019, 12, 5), :primaryType => "PT", :subType => "cardio", :details => "Run 3 miles"},
{:eventDate => Date.new(2019, 10, 17), :primaryType => "PT", :subType => "strength", :details => "Upper body workout of your choice" }, 
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

@cadets = Cadet.all.where(approved: true).order(lastName: :asc)
@events = Event.all

@cadets.each do |cadet|
    Task.create!(:date_created => Date.today, :date_due => Date.today.next_day(3), :description => "Memo due for absence", :completed => 0, :cadet_id => cadet.id)
    Task.create!(:date_created => Date.today, :date_due => Date.today.next_day(3), :description => "Memo due for tardiness", :completed => 0, :cadet_id => cadet.id)
end

@events.each do |event|
    @cadets.each do |cadet|
        Attendance.create!(:attended => 1, :cadet_id => cadet.id, :event_id => event.id)
    end
end

more_articles = [{:date => Date.new(2019,9,5), :title => "Alpha Post 1", :body => "This is a post for flight Alpha.", :tag => "Alpha"},
{:date => Date.new(2019,9,7), :title => "Alpha Post 2", :body => "This is a post for flight Alpha.", :tag => "Alpha"},
{:date => Date.new(2019,9,9), :title => "Alpha Post 3", :body => "This is a post for flight Alpha.", :tag => "Alpha"},
{:date => Date.new(2019,9,10), :title => "Alpha Post 4", :body => "This is a post for flight Alpha.", :tag => "Alpha"},
{:date => Date.new(2019,10,1), :title => "Alpha Post 5", :body => "This is a post for flight Alpha.", :tag => "Alpha"},
{:date => Date.new(2019,10,22), :title => "Alpha Post 6", :body => "This is a post for flight Alpha.", :tag => "Alpha"},
{:date => Date.new(2019,10,27), :title => "Alpha Post 7", :body => "This is a post for flight Alpha.", :tag => "Alpha"},
{:date => Date.new(2019,11,8), :title => "Alpha Post 8", :body => "This is a post for flight Alpha.", :tag => "Alpha"},
{:date => Date.new(2019,11,9), :title => "Alpha Post 9", :body => "This is a post for flight Alpha.", :tag => "Alpha"},
{:date => Date.new(2019,12,9), :title => "Alpha: Winning Attendance Competition", :body => "We won the attendance competition! Pizza party Friday to celebrate.", :tag => "Alpha"},
{:date => Date.new(2019,11,10), :title => "Bravo Post 1", :body => "This is a post for flight Bravo.", :tag => "Bravo"},
{:date => Date.new(2019,11,11), :title => "Bravo Post 2", :body => "This is a post for flight Bravo.", :tag => "Bravo"},
{:date => Date.new(2019,11,15), :title => "Bravo Post 3", :body => "This is a post for flight Bravo.", :tag => "Bravo"},
{:date => Date.new(2019,11,16), :title => "Bravo Post 4", :body => "This is a post for flight Bravo.", :tag => "Bravo"},
{:date => Date.new(2019,11,22), :title => "Bravo Post 5", :body => "This is a post for flight Bravo.", :tag => "Bravo"},
{:date => Date.new(2019,11,29), :title => "Bravo Post 6", :body => "This is a post for flight Bravo.", :tag => "Bravo"},
{:date => Date.new(2019,12,1), :title => "Bravo Post 7", :body => "This is a post for flight Bravo.", :tag => "Bravo"},
{:date => Date.new(2019,12,3), :title => "Bravo Post 8", :body => "This is a post for flight Bravo.", :tag => "Bravo"},
{:date => Date.new(2019,12,5), :title => "Bravo Post 9", :body => "This is a post for flight Bravo.", :tag => "Bravo"},
{:date => Date.new(2019,12,10), :title => "Bravo: Losing Attendance Competition", :body => "It's a bummer that we lost the attendance competition. Better luck next semester!", :tag => "Bravo"},
{:date => Date.new(2019,9,20), :title => "All Cadets Post 1", :body => "This is a post for all cadets.", :tag => "All"},
{:date => Date.new(2019,11,21), :title => "All Cadets Post 2", :body => "This is a post for all cadets.", :tag => "All"},
{:date => Date.new(2019,11,12), :title => "All Cadets Post 3", :body => "This is a post for all cadets.", :tag => "All"},
{:date => Date.new(2019,11,27), :title => "All Cadets Post 4", :body => "This is a post for all cadets.", :tag => "All"},
{:date => Date.new(2019,11,28), :title => "All Cadets Post 5", :body => "This is a post for all cadets.", :tag => "All"},
{:date => Date.new(2019,11,29), :title => "All Cadets Post 6", :body => "This is a post for all cadets.", :tag => "All"},
{:date => Date.new(2019,12,1), :title => "All Cadets Post 7", :body => "This is a post for all cadets.", :tag => "All"},
{:date => Date.new(2019,12,2), :title => "All Cadets Post 8", :body => "This is a post for all cadets.", :tag => "All"},
{:date => Date.new(2019,12,3), :title => "All Cadets Post 9", :body => "This is a post for all cadets.", :tag => "All"},
{:date => Date.new(2019,12,4), :title => "All Cadets Post 10", :body => "This is a post for all cadets.", :tag => "All"},
{:date => Date.new(2019,12,5), :title => "Volunteer Opportunity", :body => "Volunteer opportunity on Dec 15th serving dinner - contact Cadet Juenemann if interested.", :tag => "All"},
{:date => Date.new(2019,12,6), :title => "Reminder", :body => "Turn in your end of semester feedback form, due Dec 9th.", :tag => "All"},
{:date => Date.new(2019,12,8), :title => "Congrats!", :body => "Congrats to Alpha flight, who won the semester attendance challenge!", :tag => "All"},
{:date => Date.new(2019,12,11), :title => "Workouts over break", :body => "Please remember to follow the weekly workout schedule over break.", :tag => "All"},
{:date => Date.new(2019,12,9), :title => "Forms Due", :body => "Last reminder - forms due today!", :tag => "All"}]

more_articles.each do |article|
    Article.create!(article)
end