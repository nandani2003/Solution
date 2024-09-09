str = "hello world"
a=[]
arr=str.split
puts "#{arr}"
i,j=0,0
while i<str.length/2 
  a << arr[0][i]+arr[1][j]
  i+=1
  j+=1 
end

print a
