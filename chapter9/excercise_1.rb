require './orange_tree'

# Tests
i = 0

object_otree = OrangeTree.new

while i < 6
  object_otree.one_year_passes
  object_otree.pick_an_orange

  puts '*' * 20
  puts ''

  i += 1
end

