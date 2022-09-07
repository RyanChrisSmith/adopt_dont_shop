# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
@jimmy_application = Application.find_or_create_by!(name: 'Jimmy John', street_address: '303 Broadway', city: 'Denver', state: 'CO', zip_code: 80122, description: 'I would love to have a companion', status: 'In Progress')
@jack_application = Application.find_or_create_by!(name: 'Just Jack', street_address: '4002 Make Believe', city: 'Lakewood', state: 'CO', zip_code: 80127, description: 'Because Im famous', status: 'In Progress')
@fiona_application = Application.find_or_create_by!(name: 'Fiona Apple', street_address: 'All over', city: 'THe US', state: 'US', zip_code: 10000, description: 'I have a wonderful home', status: 'In Progress')
@my_application = Application.find_or_create_by!(name: 'Ryan S', street_address: '500 Down the Street', city: 'Littleton', state: 'CO', zip_code: 80124, description: 'I have 2 loving pets already', status: 'In Progress')
@shelter = Shelter.find_or_create_by!(foster_program: true, name: "Sara's Safehouse", city: 'Inglewood', rank: 3)
@fido = Pet.find_or_create_by!(adoptable: true, age: 3, breed: 'dog', name: 'Fido', shelter_id: @shelter.id)
@purrs = Pet.find_or_create_by!(adoptable: true, age: 10, breed: 'cat', name: 'Purrs', shelter_id: @shelter.id)
@baldy = Pet.find_or_create_by!(adoptable: true, age: 9, breed: 'cat', name: 'Baldy', shelter_id: @shelter.id)
PetApplication.find_or_create_by!(application: @jimmy_application, pet: @fido)
PetApplication.find_or_create_by!(application: @jimmy_application, pet: @purrs)
PetApplication.find_or_create_by!(application: @jack_application, pet: @fido)
PetApplication.find_or_create_by!(application: @jack_application, pet: @purrs)
@shelter_1 = Shelter.find_or_create_by!(name: 'Aurora shelter', city: 'Aurora, CO', foster_program: false, rank: 9)
@shelter_2 = Shelter.find_or_create_by!(name: 'RGV animal shelter', city: 'Harlingen, TX', foster_program: false, rank: 5)
@shelter_3 = Shelter.find_or_create_by!(name: 'Fancy pets of Colorado', city: 'Denver, CO', foster_program: true, rank: 10)
@pet_1 = @shelter_1.pets.find_or_create_by!(name: 'Mr. Pirate', breed: 'tuxedo shorthair', age: 5, adoptable: false)
@pet_2 = @shelter_1.pets.find_or_create_by!(name: 'Clawdia', breed: 'shorthair', age: 3, adoptable: true)
@pet_3 = @shelter_3.pets.find_or_create_by!(name: 'Lucille Bald', breed: 'sphynx', age: 8, adoptable: true)
@pet_4 = @shelter_1.pets.find_or_create_by!(name: 'Ann', breed: 'ragdoll', age: 5, adoptable: true)
PetApplication.find_or_create_by!(application: @fiona_application, pet: @pet_1)
PetApplication.find_or_create_by!(application: @fiona_application, pet: @pet_2)
PetApplication.find_or_create_by!(application: @my_application, pet: @pet_3)
PetApplication.find_or_create_by!(application: @my_application, pet: @pet_4)
PetApplication.find_or_create_by!(application: @my_application, pet: @pet_4)