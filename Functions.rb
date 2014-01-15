def extra_credit(var1, var2)
	puts "So, the first variable is #{var1}."
	puts "And the second variable is #{var2}."
	puts "I guess that's about it."
	puts
end

puts "Integers:"
extra_credit(1, 2)

puts "Floating points:"
extra_credit(1.2, 3.4)

puts "Variables:"
x = 30
y = 40
extra_credit(x, y)

puts "Integer math:"
extra_credit(10 + 20, 30 - 40)

puts "Floating points math:"
extra_credit(9.8 * 7.6, 5.4 / 3.2)

puts "Variable math:"
a = 11
b = 22
extra_credit(a + b, b - a)

puts "Integer and floating points math:"
extra_credit(1 + 1.2, 2 - 3.4)

puts "Integer and variables math:"
i = 33
j = 44
extra_credit(3 * i, 4 / j)

puts "Floating points and variables math:"
variable1 = 55
variable2 = 66
extra_credit(5.6 + variable1, 7.8 + variable2)

puts "Variable concatenation:"
variable3 = "break"
variable4 = "fast"
extra_credit(variable3 + variable4, variable4 + variable3)