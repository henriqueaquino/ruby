#!/usr/bin/ruby

hash = { 'key1' => 'value1', 'key2' => 'value2', 'key3' => 'value3' }
hash2 = { 'key1' => ['a','b','c'], 'key2' => 27 }

puts hash['key1'], hash['key2']
puts hash['key1'] + hash['key2']
puts hash2['key1'][1]
puts hash2['key2']

class Person
	def initialize(name, age)
		@name = name
		@age = age
	end

	def to_s
		"\nName: #{@name} \nAge: #{@age}\n"
	end

	attr_reader :name, :age
	attr_writer :name, :age
end

p1 = Person.new("person1",30)
puts p1.to_s

class Department
	def initialize
		@persons = Array.new
	end

	def add_person(person)
		if person.kind_of?(Person)
			puts 'Adding a new Person...'
			@persons.push(person)
		else
			puts 'Invalid Type of Person!'
		end
		self
	end

	def remove_first
		@persons.unshift
		self
	end

	def remove_last
		@persons.pop
		self
	end

	#def [](key)
	#	if key.kind_of?(Integer)
	#		@persons[key]
	#	else
	#		for i in 0...@persons.length
	#			return @persons[i] if @persons[i].name == key
	#		end
	#	end
	#end

#	def [](key)
#		if key.kind_of?(Integer)
#			return @persons[key]
#		else
#			return @persons.find { |person| person.name == key }
#		end
#	end

	def [](key)
		return @persons[key] if key.kind_of?(Integer)
		return @persons.find { |person| person.name == key }
	end
end

d1 = Department.new
d1.
	add_person(Person.new('p1',20)).
	add_person(Person.new('p2',30)).
	add_person(Person.new('p3',27)).
	add_person(1222)

puts d1.to_s
puts d1[1]
puts d1['p1']
puts d1['p3']
puts d1['p3']
