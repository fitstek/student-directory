#first we print the list of students

student_count = 19 # set variable to number of students

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
puts "The students of my cohort at Makers Academy"
puts"---------------------------------------------"

#iterating through the array students and printing each student
students.each do |student|
	puts student
end


#finally, we print th total, we call the variable by #{variable}
puts "Overall, we have #{students.length} students."