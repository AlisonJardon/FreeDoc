require 'faker'

20.times do
	Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, zip_code: Faker::Address.zip_code, city_id: City.all.sample.id)
end

20.times do
	Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city_id: City.all.sample.id)
end

20.times do
	Appointment.create(doctor: Doctor.all.sample, patient: Patient.all.sample, date: Faker::Date.in_date_period, city_id: City.all.sample.id)
end

20.times do
	City.create(name: Faker::Address.city)
end

#On crée des specialties avec Faker
20.times do
	Specialty.create(specialty: Faker::Job.seniority)
end

#On crée des entrées dans la table JoinTableSpecialtyDoctor
20.times do
	JoinTableSpecialtyDoctor.create(doctor_id: Doctor.all.sample.id, specialty_id: Specialty.all.sample.id)
end