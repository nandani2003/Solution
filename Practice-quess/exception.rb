
  def readNum(file_path)
  arr=[] 
  begin
    file = File.open(file_path, "r")
     file.each do |num|
      numb=Integer(num) 
        arr<<numb
      rescue ArgumentError
      puts " invalid data in the file will be skipped #{num}"
      end 
      return arr
      rescue Errno::ENOENT
      puts "File not found" 
    rescue Errno::EACCES
     puts "permission denied"


  end
end
 def sumCal(numarr)
  print numarr.sum
 end
  print "enter file path: "
  file_path = gets.chomp
  sum=readNum(file_path)
  sumCal(sum)
  



