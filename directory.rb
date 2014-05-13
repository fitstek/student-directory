#first we print the list of students

#Array
students = ["Nadav Matalon",
"Fitsum Teklehaimanot",
"Roi Driscoll",
"James Whyte",
"Margherita Serino",
"Vaidas Mykolaitis",
"Johann Bornman",
"Kate Hamilton",
"James Keap",
"Nic Yeeles",
"Julie Walker",
"Will Allen",
"Julia Tan",
"Federico Maffei",
"Jamie Patel",
"Faezrah Rizalman",
"Josh Fail-Brown",
"Sasha Cooper",
"Nicolai DTH"]

#method to print header
def print_header
	puts "The students of my cohort at Makers Academy"
	puts"---------------------------------------------"
end

#method to print names
def print(names)
	names.each do |name|
		puts name
	end
end

#method to print the footer
def print_footer(names)
	puts "Overall, we have #{names.length} students."
end

print_header
print(students)
print_footer(students)

