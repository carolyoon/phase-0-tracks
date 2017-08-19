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
end 

def search_by_name(db, first_name)
	search_by_name = db.execute("SELECT * FROM employees where first_name = ?;", [first_name])
	search_by_name.each do |data|
		puts "Name:#{data["first_name"]} #{data["last_name"]}"
		puts "Date of Hire: #{data["hire_date"]}"
		puts "Position: #{data["current_position"]}"
		puts "Salary: $#{data["current_pay"]} per hour"
		puts "Last Raise: #{data["last_raise"]}"
		puts "Monthly Evaluation Score: #{data["evaluation_score"]}"
	end 
end

def search_by_last_raise(db, last_raise)
	puts "Employee Raises for the month of #{last_raise}: "
	search_by_last_raise = db.execute("SELECT first_name, last_name, current_pay, evaluation_score FROM employees WHERE last_raise = ?;", [last_raise])
	search_by_last_raise.each do |data|
		puts "Name: #{data["first_name"]} #{data["last_name"]}"
		puts "Salary: $#{data["current_pay"]} per hour"
		puts "Monthly Evaluation Score: #{data["evaluation_score"]}"
		puts "--------------------------"
	end 
end 

def update_position(db, current_position, first_name)
	puts "Enter #{first_name}'s new position: "
	new_position = gets.chomp.capitalize 
	db.execute("UPDATE employees SET current_position=? WHERE first_name = ?;", [new_position, first_name])
	puts "#{first_name}'s position has been updated to #{new_position}."
end

def update_pay_and_month(db, current_pay, last_raise, first_name)
	puts "Enter #{first_name}'s new pay rate per hour: "
	new_pay = gets.chomp.to_i
	update_pay = db.execute("UPDATE employees SET current_pay=? WHERE first_name=?;", [new_pay, first_name])
	puts "Enter the current month: "
	current_month = gets.chomp.capitalize
	db.execute("UPDATE employees SET last_raise=? WHERE first_name=?;", [current_month, first_name])
	puts "#{first_name}'s salary has been updated to $#{new_pay} per hour in the month of #{current_month}." 
end 

def update_evaluation_score(db, evaluation_score, first_name)
	puts "Enter #{first_name}'s evaluation_score for this month: "
	update_score = gets.chomp.to_i
	db.execute("UPDATE employees SET evaluation_score=? WHERE first_name=?;", [update_score, first_name])
	puts "#{first_name}'s new evaluation score is #{update_score}."

end

def remove_employee(db, first_name)
	puts "Enter the first name of the employee you wish to remove: "
	db.execute("DELETE FROM employees WHERE first_name=?;", [first_name])
	puts "#{first_name} has been removed."
end 

def print_all(db)
	puts "EMPLOYMANCE EMPLOYMATION"
	print_all = db.execute("SELECT * FROM employees")
	print_all.each do |data|
		puts "Name: #{data["first_name"]} #{data["last_name"]}"
		puts "Date of Hire: #{data["hire_date"]}"
		puts "Position: #{data["current_position"]}"
		puts "Salary: $#{data["current_pay"]} per hour"
		puts "Last Raise: #{data["last_raise"]}"
		puts "Monthly Evaluation Score: #{data["evaluation_score"]}"
		puts "--------------------------"
	end 
end

def directory(db)
	puts "EMPLOYMANCE EMPLOYMATION"
	puts "--------------------------"
	puts "Please select one of the following options: "
	puts "[1] Add Employee"
	puts "[2] Search by Employee Name"
	puts "[3] Search by Month of Raise"
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
		case 
		when user_input == "1"
			input_information
			select_option = true
		when user_input == "2"
			search_by_name
			select_option = true
		when user_input == "3"
			search_by_last_raise
			select_option = true
		when user_input == "4"
			update_position
			select_option = true
		when user_input == "5"
			update_pay_and_month
			select_option = true
		when user_input == "6"
			update_evaluation_score
			select_option = true
		when user_input == "7"
			remove_employee
			select_option = true
		when user_input == "8"
			print_all
			select_option = true 
		when user_input == "9"
			select_option = true
		else 
			puts "Select an option between 1 and 9."
		end
	end
end 

# input_information(db)
# search_by_name(db, "Caroline")
# search_by_last_raise(db, "July")
# print_all(db)
# update_position(db, "manager", "Carol")
update_pay_and_month(db, 14, "July", "Carol")

