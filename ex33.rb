i = 0
numbers = []

while i < 6
	puts "At the top i is #{i}"
	numbers.push(i)

	i = i + 1
	puts "Numbers now: #{numbers}"
	puts "At the bottom i is #{i}"
end

puts "The numbers: "

for num in numbers
	puts num
end

def add_numbers(limit, increment)
	j = 0
	extra = []

	while j < limit
		puts "At the top j is #{j}"
		extra.push(j)

		j += increment
		puts "Extra is now: #{extra}"
		puts "At the bottom, j is #{j}"
	end
end

add_numbers(21, 5)

def add_numbers_2(limit, increment)
	extra_2 = []

	for k in (0...limit)
		puts "At the top k is #{k}"
		extra_2.push(k)

		k += increment
		puts "Extra_2 is now: #{extra_2}"
		puts "At the bottom, k is #{k}"
	end
end

add_numbers_2(21, 5)
