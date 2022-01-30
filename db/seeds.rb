# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
	
	# building = Building.new

	# building.name = "Diamond Tower"
	# building.registered_year = "2006"
	# building.email = "diamondtower@gmail.com"
	# building.address = "Diamond Tower, tirupati nagar phase-2"

	#  if building.save
 #    	puts "Building is created successfully"
 #    end
 	building = Building.first

	member = Member.new

	member.room_no = "101"
	member.name = "Akash Singh"
	member.mobile = "8898490858"
	member.purchase_year = "2011"
	member.building_id = building.id
     
    if member.save
    	puts "Member is created successfully"
    end