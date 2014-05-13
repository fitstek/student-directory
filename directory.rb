#first we print the list of students

#Array
def input_students
	puts "Please enter the names of the students."
	puts "To finish, just hit return"
	# create an empty array
	students = []

	#get the first name
	name = gets.chomp

	#while the name is not empty do the following(if return hit twice exit)
	while !name.empty? do
		students << {:name => name, :cohort => :november}
		puts "Now we have #{students.length} students"
		name = gets.chomp
	end
students
end

students = input_students
#method to print header
def print_header
	puts "The students of my cohort at Makers Academy"
	puts"---------------------------------------------"
end

#method to print names
def print(students)
	students.each do |student|
		puts "#{student[ :name]} (#{student[:cohort]} cohort)"
	end
end

#method to print the footer
def print_footer(names)
	puts "Overall, we have #{names.length} students."
end

print_header
print(students)
print_footer(students)

