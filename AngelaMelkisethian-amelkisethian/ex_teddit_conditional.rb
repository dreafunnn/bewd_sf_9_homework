#TIME: ~ 30 min
# Teddit Condtionals - Starter Code.

# Let's add a new Teddit feature. Upvotes!
# Complete the application below.
# Where you see comments (lines that begin with #) replace it with code so that the program works.


def get_input
  #Get input from the user.
get_input = $stdin.gets.chomp.capitalize

end

def calculate_upvotes(story, category)
	# Write code so that:
		# If the Story is about cats multiply the upvotes by 5
		# If the Story is about bacon multiply the upvotes by 8
		# If the Story is about Food it gets 3 times the upvotes.

	#For example:
	# "Cats frolic despite tuna shortage" should give you 5 times the upvotes!

calculate_upvotes = 1
if category == "Cats"
  calculate_upvotes * 5
elsif
  category == "Bacon"
  calculate_upvotes * 8
else
  category == "Food"
  calculate_upvotes**3
  end
end

puts "Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!"
puts "Please enter a News story:"
story = get_input
puts "Please give it a category:"
category = get_input
upvotes = calculate_upvotes(story, category)
puts "New story added! #{story}, Category: #{category.capitalize}, Current Upvotes: #{upvotes}"
