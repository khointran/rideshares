class PassengerRide < ActiveRecord::Base
  belongs_to :passenger, class_name: "User"
  belongs_to :ride, class_name: "Micropost"
end
