json.extract! cadet, :id, :cadetID, :lastName, :firstName, :email, :phoneNumber, :school, :position, :course, :gradYear, :flight, :username, :password, :created_at, :updated_at
json.url cadet_url(cadet, format: :json)
