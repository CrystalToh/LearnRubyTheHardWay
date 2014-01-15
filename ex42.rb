## Animal is-a object Look at the extra credit
class Animal
	def sleep
		puts "Curl up."
	end
end

## Dog is-a Animal
class Dog < Animal
	def initialize(name)
		## Dog has-a name
		@name = name
	end
end

## Cat is-a Animal
class Cat < Animal
	def initialize(name)
		## Cat has-a name
		@name = name
	end
end

## Person is-a object
class Person
	def initialize(name)
		## Person has-a name
		@name = name

		## Person has-a pet of some kind
		@pet = nil
	end

	attr_accessor :pet

	def eat
		puts "Eat pasta with a fork"
		puts "Drink hot chocolate"
	end
end

## Employee is-a Person
class Empoyee < Person
	def initialize(name, salary)
		## Employee has-a name inherited from Person
		super(name)
		## Employee has-a salary
		@salary = salary
	end
end

## Fish is-a Object
class Fish
	def swim
		puts "Swish tail left and right."
	end
end

## Salmon is-a Fish
class Salmon < Fish
end

## Halibut is-a Fish
class Halibut < Fish
end

## rover is-a Dog
rover = Dog.new("Rover")

## satan is-a Cat
satan = Cat.new("Satan")

## mary is-a Person
mary = Person.new("Mary")

## mary's pet is satan
mary.pet = satan

## frank is-a Employee with the name Frank and salary pf 120000
frank = Employee.new("Frank", 120000)

## frank's pet is rover
frank.pet = rover

## flipper is-a Fish
flipper = Fish.new()

## crouse is-a Salmon
crouse = Salmon.new()

## harry is-a Halibut
harry = Halibut.new()

class Bird < Animal
	def initialize(name, food)
		@name = name
		@food = food
	end
end

tweety = Bird.new("Tweety", ["nuts", "berries", "corn"])
