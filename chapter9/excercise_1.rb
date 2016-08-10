class OrangeTree
  
  def initialize( )
    @orange_count = 0
    @tree_height = 0
    @tree_age = 0
    @produce = 0
    @picked = 0
  end
  
  def one_year_passes
    @picked = 0
    @orange_count = 0
    @tree_age += 1
    @tree_height = height
    @produce = (@tree_age > 2 && @tree_age < 5) ? @produce + rand(5) : 0

    if @tree_age == 5
      puts "tree is no more"

      exit
    else
      puts "Stats for the tree are:\n  Age: #{@tree_age}\n  Height: #{@tree_height}\n  Produce: #{@produce}"
    end

  end



  def pick_an_orange
    if count_the_orange > 0
      @picked += 1

      puts "That orange was yum :). #{@orange_count} more left"
    else
      puts 'No more oranges left'
    end
  end

  private

  def height
    @tree_height + 2
  end

   def count_the_orange
     @orange_count = @produce - @picked >= 0 ? @produce - @picked : 0
  end
end

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

