# create global variables
@students = []
@name = ""
@cohort = ""

#method for the interactive menu
def interactive_menu
	loop do
		
		#prints the choices
		print_menu

		# reads user input into the process method
		process(gets.chomp)	
	end
end

#method for the main engine(selection results)
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

#method for inputting students data
def input_students
	get_information
				
	#while the name is not empty do the following(if return hit twice exit)
	while !@name.empty? do

		#append student with the Hash values
		@students << {:name => @name, :cohort => @cohort}

		#print out number of students
		puts "Now we have #{@students.length} students"
		
		get_information
	end

	# return students
	@students
end

def get_information

	#get the first name
	puts "Please enter the names of the students."
	puts "To finish, just hit return twice"
	@name = gets.chomp

	# read in cohort name
	puts "Please enter cohort name"
	@cohort = gets.chomp

	#return name and cohort
	@name
	@cohort
end

#method to print header
def print_header
	puts "The students of my cohort at Makers Academy"
	puts"---------------------------------------------"
end

#method to print names by iterating over the array
def print_students
	@students.each do |student|
		puts "#{student[ :name]} (#{student[:cohort]} cohort)"
	end
end

#method to print the footer
def print_footer
	puts "Overall, we have #{@students.length} students."
end

#method to print out the choices
def print_menu
	puts "1. Input the students"
	puts "2. Show the students"
	puts "9. Exit"
end

#method to print out the results
def show_students
	print_header
	print_students
	print_footer
end

#method to save the list of students in a file
def save_students

	#open file for writing and save the reference(name of file, mode(r,w)) to it in file
	file = File.open("students.csv", "w")

	#iterate over the student list 
	@students.each do |student|

		#take the entries of the hash and convert them into arrays and store them in student_data
		student_data = [student[:name], student[:cohort]]

		#take the array elements of student_data and join them by using a comma
		csv_line = student_data.join(",")

		#take the joined elements and print them out in the file created
		file.puts csv_line
	end
	file.close
end
	
#load the menu first
interactive_menu

