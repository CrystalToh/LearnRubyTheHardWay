# create a mapping of state to abbreviation
states = {
	'Oregon' => 'OR',
	'Florida' => 'FL',
	'California' => 'CA',
	'New York' => 'NY',
	'Michigan' => 'MI'
}

my_states = {
	'Kuala Lumpur' => 'KL',
	'Selangor' => 'SL'
}

# create a basic set of states and some cties in them
cities = {
	'CA' => 'San Francisco',
	'MI' => 'Detroit',
	'FL' => 'Jacksonville'
}

my_cities = {
	'KL' => 'Taman Tun',
	'SL' => 'Petaling Jaya'
}

# add some more cities
cities['NY'] = 'New York'
cities['OR'] = 'Portland'

# puts out some cities
puts '-' *  10
puts "NY State has: ", cities['NY']
puts "OR State has: ", cities['OR']

puts "KL State has: ", my_cities['KL']

# puts some states
puts '-' * 10
puts "Michigan's abbreviation is: ", states['Michigan']
puts "Florida's abbreviation is: ", states['Florida']

puts "Selangor's abbeviation is: ", my_states['Selangor']

# do it by using the state then cities dict
puts '-' * 10
puts "Michigan has: ", cities[states['Michigan']]
puts "Florida has: ", cities[states['Florida']]

puts "Kuala Lumpur has: ", my_cities[my_states['Kuala Lumpur']]

# puts every state abbreviation
puts '-' * 10
for state, abbrev in states
	puts "%s is abbreviated %s" % [state, abbrev]
end

for state, abbrev in my_states
	puts "%s is abbreviated %s" % [state, abbrev]
end

# put every city in state
puts '-' * 10
for abbrev, city in cities
	puts "%s has the city %s" % [abbrev, city]
end

for abbrev, city in my_cities
	puts "%s has the city %s" % [abbrev, city]
end

# now do both at the same time
puts '-' * 10
for state, abbrev in states
	puts "%s state is abbreviated %s and has city %s" % [
		state, abbrev, cities[abbrev]]
end

for state, abbrev in my_states
	puts "%s state is abbreviated %s and has city %s" % [
		state, abbrev, my_cities[abbrev]]
end

puts '-' * 10
# if it's not there you get nil
state = states['Texas']
my_state = my_states['Sarawak']

if not state
	puts "Sory, no Texas."
end

if not my_state
	puts "Sorry, no Sarawak."
end

# get a city with a default value
city = cities['TX'] || 'Does Not Exist'
puts "The city for the state 'TX' is: %s" % city

my_city = my_cities['SWK'] || 'Not found in database.'
puts "The city for the state 'SWK' is: %s" % my_city
