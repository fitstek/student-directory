# create an empty array
@students = []
def interactive_menu
	
	loop do
		
		#prints the choices
		puts "1. Input the students"
		puts "2. Show the students"
		puts "9. Exit"

		# read user input
		selection = gets.chomp

		# continue based on input
		case selection
			when "1"
			input_students
		
			when "2"
			print_header
			print
			print_footer
			
			when "9"
			exit
			else
			puts"I don't know what you meant, try again"
		
		end
	end
end


def input_students
				puts "Please enter the names of the students."
				puts "To finish, just hit return"
				

				#get the first name
				name = gets.chomp
				
				#while the name is not empty do the following(if return hit twice exit)
				while !name.empty? do
					@students << {:name => name, :cohort => :May}
					puts "Now we have #{@students.length} students"
					name = gets.chomp
				end
				@students
		end

#method to print header
def print_header
	puts "The students of my cohort at Makers Academy"
	puts"---------------------------------------------"
end

#method to print names
def print
	@students.each do |student|
		puts "#{student[ :name]} (#{student[:cohort]} cohort)"
	end
end

#method to print the footer
def print_footer
	puts "Overall, we have #{@students.length} students."
end

interactive_menu

