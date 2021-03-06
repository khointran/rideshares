class UserMailer < ActionMailer::Base
  default from: "khoitran_2014@depauw.edu"

  def welcome(user)
    @user = user

    mail to: user.email, subject: "Welcome to DePauw Rides"
  end

  def match(user, ride)
    @user = user
    @ride = ride

    mail to: user.email, subject: "We found a ride that matches your requests"
  end

  def passenger_request(driver, rider)
    @driver = driver
    @rider = rider

    mail to: driver.email, subject: "Hi #{@driver.email}, a friend has requested to join your ride"
  end

  def passenger_accept(driver, rider)
    @driver = driver
    @rider = rider

    mail to: [rider.email, driver.email], subject: "Congrats! You ride is here"
  end
end
