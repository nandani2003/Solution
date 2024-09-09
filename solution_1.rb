str="i am programmer"
arr = str.split
puts "#{arr}"
i=0
while i<arr.length 
 str=arr[i]
 print "#{str.insert(1,"1")} "
 i+=1
end
