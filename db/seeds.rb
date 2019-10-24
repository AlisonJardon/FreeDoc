require 'faker'

20.times do
	Doctor.create(first_name: "Jean-Michel", last_name: "Random")
end

20.times do
	Patient.create(first_name: "Jean-Mi", last_name: "Rand")
end