@students = []# an empty array accessible to all methods

def input_students
  puts "Enter student name(s)"
  puts "Hit enter twice to finish"
  #get first name
  name = gets.chomp
  #while name is not empty - repeat the code
  while !name.empty? do
    #add student hash to array
    @students << {name: name, cohort: :november}
    puts "Current student count is: #{@students.count}"
    #get another name
    name = gets.chomp
  end
  @students
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print
  @students.each_with_index {
  |name, index|
  puts "#{index}: #{name[:name]} (#{name[:cohort]} cohort)"
}
end

def print_footer
  puts "Overall we have #{@students.count} great students"
  puts "-------------"
end


def show_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "3. Save the list to students.csv"
  puts "9. Exit"
end

def show_students
  print_header
  print
  print_footer
end

def process(selection)
  case selection
  when "1"
    students = input_students
  when "2"
    show_students
  when "3"
    save_students
  when "9"
    exit
  else 
    puts "Please enter a valid option"
  end
end

def save_students
  #open file for writing
  file= File.open("students.csv", "w")
  #iterate over student array
  @students.each {
    |student|
    student_data = [student[:name], student[:cohort]]
    csv_line = student_data.join(",")
    file.puts csv_line
  }
  file.close
end


def interactive_menu
  loop do
    show_menu

    process(gets.chomp) 
    
    
  end
end

interactive_menu
