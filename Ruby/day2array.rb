a = [5, 9, 32, 64, 3, 127, 3, 8, 9, 10, 101, 42, 24, 14, 18, 23]

#print out four numbers at a time using "each"
i=0
a.each do |n|
  i=i+1
  if (0==i%4)
    puts n
  else
    print "#{n},"
  end
end

a.each_slice(4) {|n| p n}
