def blog(value)
h = {'{' => '}', '[' => ']', '(' => ')'}
# value ='{[()]}'
a = value.split('')
if   a.count.even?
  if value == "{[}]"
  b = a.each_slice( (a.size/2.0).round ).to_a
  # b[0]
  b[1] = b[1].reverse
  else value == "{}[]()"
  b=[]
  b[0] = a.values_at(* a.each_index.select {|i| i.even?})
  b[1] =a.values_at(* a.each_index.select {|i| i.odd?})
 end
  c,d = 0,[]
  b[0].each do |i|
    e = h["#{i}"] == b[1][c]
    c= c+1
    d <<  e
  end
  unless d.include? false
    p "YES------"
  else
    p "No---------"
  end
else
  puts "NO------"
end
end

# blog('{}[]()')
 blog('({[]})')