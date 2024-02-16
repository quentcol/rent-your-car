#clean database
puts 'cleaning database...'
Booking.destroy_all
puts 'cleaned bookings...'
Review.destroy_all
puts 'cleaned reviews'
Car.destroy_all
puts 'cleaned cars'
User.destroy_all
puts 'cleaned users'

#User data
user_1 = { email: "user1@gmail.com", password: "password_1" }

#create users
user = User.create!(user_1)

puts 'created user!'

#cars data
car_1 = { brand: "Toyota", price: 150, capacity: 4, model: "Aygo", user_id: user.id }
car_2 = { brand: "Kia", price: 200, capacity: 5, model: "Picanto", user_id: user.id }
car_3 = { brand: "Honda", price: 175, capacity: 4, model: "Civic", user_id: user.id }
car_4 = { brand: "Mercedes", price: 450, capacity: 5, model: "A313", user_id: user.id }
car_5 = { brand: "Hyundai", price: 325, capacity: 5, model: "Tuscon", user_id: user.id }
car_6 = { brand: "Audi", price: 675, capacity: 5, model: "Q8", user_id: user.id }


#create cars
[car_1, car_2, car_3, car_4, car_5, car_6].each do |info|
  car = Car.create!(info)
  puts "created #{car.model}"
end

puts 'Created cars!'
