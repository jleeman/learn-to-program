class OrangeTree
  
  def initialize
    @height = 0
    @years_old = 0
    @num_oranges = 0
  end
  
  def one_year_passes
    @height += 8
    @years_old += 1
    if oranges?
      @num_oranges += 8
    end
    if dead? == false
      puts "A year passes..."
      puts "Your orange tree has now grown #{@height} inches and is #{@years_old} years old."
    else 
      puts "Oh no! Your orange tree has grown old and died. See you later."
      exit
    end
  end

  def count_oranges
    puts "Your orange tree has #{@num_oranges} oranges."
  end

  def pick_oranges num
    if @num_oranges >= num
      puts "You've picked #{num} oranges."
      @num_oranges -= num
    else
      puts "Sorry, no oranges to pick for you right now or you tried to pick too many."
    end
  end

  private

  def oranges?
    if @years_old > 3
      oranges = true
    else
      oranges = false
    end
  oranges
  end

  def dead?
    if @years_old > 8
      dead = true
    else
      dead = false
    end
  dead  
  end
  
end

def grow_tree tree
  tree.one_year_passes

  # option to count oranges
  puts "Count how many oranges there are? Yes/No only."
  pick = gets.chomp.downcase 
  if pick == "yes"
    tree.count_oranges
  end

  # option to pick oranges
  puts "Pick some oranges? Yes/No only."
  pick = gets.chomp.downcase 
  if pick == "yes"
    puts "How many?"
    num_pick = gets.chomp.to_i
    tree.pick_oranges(num_pick)
  end
  
  # keep growing tree or quit
  puts "Grow another year or quit? Yes/No only."
  grow = gets.chomp.downcase 
  if grow == "yes"
    grow_tree(tree)
  else
    exit
  end
end

tree = OrangeTree.new
puts "Your tree has been planted!"
grow_tree(tree)



=begin
Orange tree. Make an OrangeTree class that has a height method that returns
its height and a one_year_passes method that, when called, ages the tree one
year. Each year the tree grows taller (however much you think an orange
tree should grow in a year), and after some number of years (again, your
call) the tree should die. For the first few years, it should not produce
fruit, but after a while it should, and I guess that older trees produce
more each year than younger trees…whatever you think makes the most
sense. And, of course, you should be able to count_the_oranges (which returns
the number of oranges on the tree) and pick_an_orange (which reduces the
@orange_count by 1 and returns a string telling you how delicious the orange
was, or else it just tells you that there are no more oranges to pick this
year). Make sure any oranges you don’t pick one year fall off before the
next year.
=end