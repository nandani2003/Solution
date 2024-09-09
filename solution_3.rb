#sort
 arr=[2, 4, 8, 9, 7, 10, 0, 1]
for i in (0..arr.length-1) do
  for j in (0..arr.length-2) do
  if arr[j]>arr[j+1]
    arr[j],arr[j+1]=arr[j+1],arr[j]
  end
end
end
print arr

