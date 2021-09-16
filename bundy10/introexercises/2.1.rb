# Fix up the following code that it works and produces the expected output
# in the task specification.
require 'date'
# Asks the user to enter their age and returns an integer age
def get_age()
  puts("Enter your age in years: ")
  age_in_years = gets.chomp.to_i
  return age_in_years
end

# takes a argument which is a string prompt and displays it to the user then returns the
# entered string
def get_string(prompt)
  puts(prompt)
  s = gets.chomp()
  return s
end

# Calculate the year born based on the parameter age and print that out
# along with the name of the user (pass in: name, age) 
def print_year_born(age, name)
  year_born = Date.today.year -  age
  age = year_born.to_s
  print("#{name} you were born in: #{age}")
end

def main()
  age = get_age()
  prompt = "Enter your name:"
  name = get_string(prompt)
  print_year_born(age, name)
end

main()