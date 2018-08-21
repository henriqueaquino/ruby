#!/usr/bin/ruby

class Employee
	def initialize(name, age)
		@name = name
		@age = age
	end

	def to_s
		"\n Name: #{@name}\n Age: #{@age}\n "
	end
end

class Manager < Employee
	def initialize(name, age, sector)
		super(name, age)
		@sector = sector
	end

	def to_s
		super + "Sector: #{@sector}\n "
	end
	
	def name
		@name
	end

	def age
		@age
	end

	def sector
		@sector
	end

	def sector=(new_sector)
		@sector = new_sector
	end
end

class Director < Manager
	def initialize(name, age, sector, district, city)
		super(name, age, sector)
		@district = district
		@city = city
	end

	def to_s
		super + "District: #{@district}\n City: #{@city}\n "
	end
	
	attr_reader :district, :city
	attr_writer :district, :city
end

d1 = Director.new('director_one', 50, 'A', 17, 'New York')

puts
puts d1.to_s
puts d1.district
puts d1.city
d1.district = 27
d1.city = 'New Jersey'
puts d1.district
puts d1.city

m1 = Manager.new('manager_one', 30, 'B')

puts
puts m1.to_s
puts m1.sector
m1.sector = 'A'
puts m1.sector
