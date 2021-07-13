#put all students into an array
students = [
  {name: "Dr. Hannibal Lecter", cohort: :november},
  {name: "Darth Vader", cohort: :november},
  {name: "Nurse Ratched", cohort: :november},
  {name: "Michael Corleone", cohort: :november},
  {name: "Alex DeLarge", cohort: :november},
  {name: "The Wicked Witch of the West", cohort: :november},
  {name: "Terminator", cohort: :november},
  {name: "Freddy Krueger", cohort: :november},
  {name: "The Joker", cohort: :november},
  {name: "Joffrey Baratheon", cohort: :november},
  {name: "Norman Bates", cohort: :november}
]

def input_students
  puts "Enter student name(s)"
  puts "Hit enter twice to finish"
  #create empty array
  students = []
  #get first name
  name = gets.chomp
  #while name is not empty - repeat the code
  while !name.empty? do
    #add student hash to array
    students << {name: name, cohort: :november}
    puts "Current student count is: #{students.count}"
    #get another name
    name = gets.chomp
  end
  students
end

def print_header
  "The students of Villains Academy"
  "-------------"
end

def print(names)
  names.each {
  |name|
  puts "#{name[:name]} (#{name[:cohort]} cohort)"
}
end

def print_footer(names)
  puts "Overall we have #{names.count} great students"
end

students = input_students
print_header
print(students)
print_footer(students)