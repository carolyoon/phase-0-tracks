#EMPLOYMANCE: Keeps track of employee performance. 
# Psuedocode:
	# Create database table (employees, evaluations)
	# Create enter employee method
	# Create date of hire method
	# Create current position method 
	# Create current pay method
	# Create last raise method 
	# Create evaluation date method
	# Create evaluation method
	# Create alter method 
	# Create add employee method
	# Create remove employee method
	
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
	puts "Please enter the employee's first name: "
	first_name = gets.chomp.capitalize 
	
	puts "Please enter #{first_name}'s last name: "
	last_name = gets.chomp.capitalize

	puts "Please enter #{first_name}'s date of hire: "
	hire_date = gets.chomp 

	puts "Please enter #{first_name}'s current position: "
	current_position = gets.chomp.capitalize 

	puts "Please enter #{first_name}'s current pay rate: "
	current_pay = gets.chomp.to_i

	puts "Please enter the month of #{first_name}'s last pay raise: "
	last_raise = gets.chomp.capitalize 

	puts "Please enter #{first_name}'s evaluation score (1-5) for this month: "
	evaluation_score = gets.chomp.to_i

	db.execute("INSERT INTO employees (first_name, last_name, hire_date, current_position, current_pay, last_raise, evaluation_score) VALUES (?, ?, ?, ?, ?, ?, ?)", [first_name, last_name, hire_date, current_position, current_pay, last_raise, evaluation_score])
end 

def search_by_name(db, first_name)
	search_by_name = db.execute("SELECT * FROM employees where first_name = ?;", [first_name])
	search_by_name.each do |data|
		puts "Name: #{data["first_name"]} #{data["last_name"]}"
		puts "Date of Hire: #{data["hire_date"]}"
		puts "Position: #{data["current_position"]}"
		puts "Salary: $#{data["current_pay"]} per hour"
		puts "Last Raise: #{data["last_raise"]}"
		puts "Monthly Evaluation Score: #{data[evaluation_score]}"
	end 
end



# def print_all(db)

# end 

input_information(db)
search_by_name(db, "Caroline")

