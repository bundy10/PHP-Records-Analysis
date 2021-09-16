# writes the number of lines then each line as a string.

def write_data_to_file(a_file)
    a_file = File.open("mydata.txt", "w")
    array = ["Fred", "Sam", "Jill", "Jenny", "Zorro"]
    a_file.puts(array.count)
    a_file.puts(array)
    a_file.close
 end
 
 # reads in each line.
 # you need to change the following code
 # so that it uses a loop which repeats
 # acccording to the number of lines in the File
 # which is given in the first line of the File
 def read_data_from_file(a_file)
     a_file = File.open("mydata.txt", "r")
     count = a_file.gets.to_i()
     while count > 0 do
       puts a_file.gets
       count -= 1
     end
     a_file.close
 end
 
 # writes data to a file then reads it in and prints
 # each line as it reads.
 # you should improve the modular decomposition of the
 # following by moving as many lines of code
 # out of main as possible.
 def main
   a_file = File.new("mydata.txt", "w")
   write_data_to_file(a_file)
   
   a_file = File.open("mydata.txt", "r")
   read_data_from_file(a_file)
 end
 
 main
 