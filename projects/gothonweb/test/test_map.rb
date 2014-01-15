require 'test/unit'
require_relative '../lib/map'

class MyUnitTests < Test::Unit::TestCase

	def test_room()
		gold = Room.new("GoldRoom",
						"""This room has gold in it you can grab. There's a
					door to the north.""")
		assert_equal(gold.name, "GoldRoom")
		assert_equal(gold.paths, {})
	end

	def test_room_paths()
		center = Room.new("Center", "Test room in the center.")
		north = Room.new("North", "Test room in the north.")
		south = Room.new("South", "Test room in the south.")

		center.add_paths({:north => north, :south => south})
		assert_equal(center.go(:north), north)
		assert_equal(center.go(:south), south)
	end

	def test_map()
		start = Room.new("Start", "You can go west and down a hole.")
		west = Room.new("Trees", "There are trees here, you can go east.")
		down = Room.new("Dungeon", "It's dark down here, you can go up.")

		start.add_paths({:west => west, :down => down})
		west.add_paths({:east => start})
		down.add_paths({:up => start})

		assert_equal(start.go(:west), west)
		assert_equal(start.go(:west).go(:east), start)
		assert_equal(start.go(:down).go(:up), start)
	end

	def test_gothon_game_map()
		assert_equal(START.go('shoot!'), HASH[:central_corridor_loser_1])
		assert_equal(START.go('dodge!'), HASH[:central_corridor_loser_2])

		room = START.go('tell a joke')
		assert_equal(room, HASH[:laser_weapon_armory])

		room2 = room.go('0132')
		assert_equal(room2, HASH[:the_bridge])

		room3 = room2.go('slowly place the bomb')
		room4 = room2.go('throw the bomb')
		assert_equal(room3, HASH[:escape_pod])
		assert_equal(room4, HASH[:the_bridge_loser])

		room5 = room3.go('2')
		room6 = room3.go('*')
		assert_equal(room5, HASH[:the_end_winner])
		assert_equal(room6, HASH[:the_end_loser])
	end

end
