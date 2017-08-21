#EMPLOYMANCE: Keeps track of employee performance. 
# Psuedocode:
	# Create database table (employees, evaluations)
	# Create enter employee method
	# Create date of hire method
	# Create current position method 
	# Create current pay method
	# Create last raise method 
	# Create evaluation score method
	# Create search methods
	# Create update methods 
	# Create add employee method /loop
	# Create remove employee method
	# Create directory method 
	
	#Provide user interface

require 'sqlite3'
db = SQLite3::Database.new("employmance.db")
db.results_as_hash = true 

create_table_employees = <<-SQL
	CREATE TABLE IF NOT EXISTS employees(
		id INTEGER PRIMARY KEY,
		first_name VARCHAR(255),
		last_name VARCHAR(255),
		hire_date VARCHAR(255),
		current_position VARCHAR(255),
		current_pay INT,
		last_raise VARCHAR(255),
		evaluation_score INT
	)
	SQL

db.execute(create_table_employees)


def input_information(db)
	puts "Enter the employee's first name: "
	first_name = gets.chomp.capitalize 
	
	puts "Enter #{first_name}'s last name: "
	last_name = gets.chomp.capitalize

	puts "Enter #{first_name}'s month and year of hire: "
	hire_date = gets.chomp 

	puts "Enter #{first_name}'s current position: "
	current_position = gets.chomp.capitalize 

	puts "Enter #{first_name}'s current pay rate: "
	current_pay = gets.chomp.to_i

	puts "Enter the month of #{first_name}'s last pay raise: "
	last_raise = gets.chomp.capitalize 

	puts "Enter #{first_name}'s evaluation score (1-5) for this month: "
	evaluation_score = gets.chomp.to_i

	db.execute("INSERT INTO employees (first_name, last_name, hire_date, current_position, current_pay, last_raise, evaluation_score) VALUES (?, ?, ?, ?, ?, ?, ?)", [first_name, last_name, hire_date, current_position, current_pay, last_raise, evaluation_score])
	
	puts "You have successfully stored this employee's employmation!"
end 

def search_by_name(db, first_name)
	valid_input(db, first_name)
	search_by_name = db.execute("SELECT * FROM employees where first_name = ?;", [first_name])
	search_by_name.each do |data|
		puts "Name:\t#{data["first_name"]} #{data["last_name"]}"
		puts "Date of Hire:\t#{data["hire_date"]}"
		puts "Position:\t#{data["current_position"]}"
		puts "Salary:\t$#{data["current_pay"]} per hour"
		puts "Last Raise:\t#{data["last_raise"]}"
		puts "Monthly Evaluation Score:\t#{data["evaluation_score"]}"
	end 
end

def update_position(db, first_name)
	valid_input(db, first_name)
	puts "Enter #{first_name}'s new position: "
	new_position = gets.chomp.capitalize 
	db.execute("UPDATE employees SET current_position=? WHERE first_name = ?;", [new_position, first_name])
	puts "#{first_name}'s position has been updated to #{new_position}."
end


def update_pay_and_month(db, first_name)
	valid_input(db, first_name)
	puts "Enter #{first_name}'s new pay rate per hour: "
	new_pay = gets.chomp.to_i
	db.execute("UPDATE employees SET current_pay=? WHERE first_name=?;", [new_pay, first_name])
	puts "Enter the current month: "
	current_month = gets.chomp.capitalize
	db.execute("UPDATE employees SET last_raise=? WHERE first_name=?;", [current_month, first_name])
	puts "#{first_name}'s salary has been updated to $#{new_pay} per hour in the month of #{current_month}." 
end 

def update_evaluation_score(db, first_name)
	valid_input(db, first_name)
	puts "Enter #{first_name}'s evaluation_score for this month: "
	update_score = gets.chomp.to_i
	db.execute("UPDATE employees SET evaluation_score=? WHERE first_name=?;", [update_score, first_name])
	puts "#{first_name}'s new evaluation score is #{update_score}."
	back_to_menu(db)
end

def remove_employee(db, first_name)
	valid_input(db, first_name)
	puts "Enter the first name of the employee you wish to remove: "
	db.execute("DELETE FROM employees WHERE first_name=?;", [first_name])
	puts "#{first_name} has been removed."
	back_to_menu(db)
end 

def print_all(db)
	puts "EMPLOYMANCE EMPLOYMATION"
	print_all = db.execute("SELECT * FROM employees")
	print_all.each do |data|
		puts "Name:\t#{data["first_name"]} #{data["last_name"]}"
		puts "Date of Hire:\t#{data["hire_date"]}"
		puts "Position:\t#{data["current_position"]}"
		puts "Salary:\t$#{data["current_pay"]} per hour"
		puts "Last Raise:\t#{data["last_raise"]}"
		puts "Monthly Evaluation Score:\t#{data["evaluation_score"]}"
		puts "--------------------------"
	end 
	back_to_menu(db)
end

def valid_input(db, first_name)
	input = false
	search_result = db.execute("SELECT * FROM employees WHERE first_name = ?;", [first_name])
	search_result.each do |data|
		if data["first_name"] == first_name
			input = true
		else
		puts "Not a valid entry."
		input
		end
	end 
end

def back_to_menu(db)
	puts ""
	puts "Press 'enter' to go back to the main menu."
	directory(db)
end


def directory(db)
	puts "--------------------------"
	puts "EMPLOYMANCE EMPLOYMATION"
	puts "--------------------------"
	puts "Please select one of the following options: "
	puts "[1] Add Employee"
	puts "[2] Search by Employee Name"
	puts "[4] Update Employee's Position"
	puts "[5] Update Employee's Pay Rate and Month of Raise"
	puts "[6] Update Employee's Month Evaluation Score"
	puts "[7] Remove Employee"
	puts "[8] Display All"
	puts "[9] Exit Program"
	puts "--------------------------"
	select_option = false
	until select_option
		user_input = gets.chomp
		case user_input
		when "1"
			input_information(db, first_name)
			select_option = true
		when "2"
			puts "Enter the first name of the employee you wish to search for: "
			first_name = gets.chomp
			search_by_name(db, first_name)
			select_option = true
		when "3"
			puts "Enter the first name of the employee to update his/ her position: "
			first_name = gets.chomp 
			update_position(db, first_name)
			select_option = true
		when "4"
			puts "Enter the first name of the employee to update his / her pay rate: "
			first_name = gets.chomp 
			update_pay_and_month(db, first_name)
			select_option = true
		when "5"
			puts "Enter the first name of the employee to update his / her evaluation score: "
			first_name = gets.chomp 
			update_evaluation_score(db, first_name)
			select_option = true
		when "6"
			puts "Enter the first name of the employee you wish to remove: "
			first_name = gets.chomp
			remove_employee(db, first_name)
			select_option = true
		when "7"
			print_all(db)
			select_option = true 
		when "8"
			select_option = true
		else 
			puts "Select an option between 1 and 8."
		end
	end
end 



# input_information(db)
# search_by_name(db, "Caroline")
# search_by_last_raise(db, "July")
# print_all(db)
# update_position(db, "manager", "Carol")
# update_pay_and_month(db, 14, "July", "Carol")
# update_evaluation_score(db, 3, "Carol")
# remove_employee("Carol")
directory(db)

