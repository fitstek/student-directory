# create an empty array
@students = []
def interactive_menu
	
	loop do
		
		#prints the choices
		print_menu

		# read user input
		process(gets.chomp)	
	end
end

def process(selection)
	case selection
			when "1"
				input_students
		
			when "2"
				show_students
			
			when "9"
				save_students
				exit
			else
				puts "I don't know what you meant, try again"
		
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
def print_students
	@students.each do |student|
		puts "#{student[ :name]} (#{student[:cohort]} cohort)"
	end
end

#method to print the footer
def print_footer
	puts "Overall, we have #{@students.length} students."
end

def print_menu
	puts "1. Input the students"
	puts "2. Show the students"
	puts "9. Exit"
end

def show_students
	print_header
	print_students
	print_footer
end

def save_students

	#open file for writing
	file = File.open("students.csv", "w")

	@students.each do |student|
		student_data = [student[:name], student[:cohort]]
		csv_line = student_data.join(",")
		file.puts csv_line
	end
	file.close
end
	


interactive_menu

