birthdays = Hash.new

File.open('/users/joshleeman/Projects/Tealeaf/learn-to-program/birthdays.txt').each_line do |line|
	name, date, year = line.split(',')
	month, day = date.split
	birthdays[name] = Time.gm(year, month, day)
end

def check_birthday birthdays
	puts "Enter name:"
	name = gets.chomp
	if birthdays.has_key?(name)
		puts "Birthday is: #{birthdays[name]}"
	else
		puts "Didn't find that name, sorry."
	end
	puts "Check another name? (yes/no response only)?"
	yes_no = gets.chomp
	if yes_no == "yes"
		check_birthday(birthdays)
	else
		exit	
	end
end

check_birthday(birthdays)


