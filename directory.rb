#first we print the list of students

#Array
students = [
{:name => "Nadav Matalon", :cohort => :may},
{:name => "Fitsum Teklehaimanot", :cohort => :may},
{:name => "Roi Driscoll", :cohort => :may},
{:name => "James Whyte", :cohort => :may},
{:name => "Margherita Serino", :cohort => :may},
{:name => "Vaidas Mykolaitis", :cohort => :may},
{:name => "Johann Bornman", :cohort => :may},
{:name => "Kate Hamilton", :cohort => :may},
{:name => "James Keap", :cohort => :may},
{:name => "Nic Yeeles", :cohort => :may},
{:name => "Julie Walker", :cohort => :may},
{:name => "Will Allen", :cohort => :may},
{:name => "Julia Tan", :cohort => :may},
{:name => "Federico Maffei", :cohort => :may},
{:name => "Jamie Patel", :cohort => :may},
{:name => "Faezrah Rizalman", :cohort => :may},
{:name => "Josh Fail-Brown", :cohort => :may},
{:name => "Sasha Cooper", :cohort => :may},
{:name => "Nicolai DTH",  :cohort => :may}

]

#method to print header
def print_header
	puts "The students of my cohort at Makers Academy"
	puts"---------------------------------------------"
end

#method to print names
def print(names)
	names.each do |name|
		puts "#{name[ :name]} (#{name[:cohort]} cohort)"
	end
end

#method to print the footer
def print_footer(names)
	puts "Overall, we have #{names.length} students."
end

print_header
print(students)
print_footer(students)

