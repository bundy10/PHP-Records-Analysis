require 'date'
require './input_functions'

# Multiply metres by the following to get inches:
INCHES = 39.3701

# Insert into the following your hello_user code
# from task 1.3P and modify it to use the functions
# in input_functions

def main()

  # HOW TO USE THE input_functions CODE
  # Example of how to read strings:

  s = read_string('What is your name?')
  puts ("Your name is #{s}!")
  
  l = read_string('What is your family name?')
  puts("Your family name is: #{l}!")

  i = read_integer('What year were you born?')
  age = Date.today.year - i
  puts("So you are #{age.to_s} years old")

  f = read_float('Enter your height in metres (i.e as a float): ')
  height = f * INCHES
  puts("Your height in inches is: \n#{height}")
  
  puts ("Finished")
  option = read_string('Do you want to continue?')
  if option == "no"
  puts ("ok, goodbye")
  end
  # Get the curent year from the system:

	 # Now if you know how to do all that
   # Copy in your code from your completed
	 # hello_user Task 1.3 P. Then modify it to
	 # use the code in input_functions.
   # use read_string for all strings (this will
   # remove all whitespace)
end

main()