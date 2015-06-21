# # Complete the function below.
#
#
# def  lonelyInteger(arr)
#   answer = 0
#   for candidate in arr
#     answer ^= candidate
#     return answer
#     if __name__ == '__main__'|| arr = input()
#       b = map(int, raw_input().strip().split(" "))
#       print lonelyinteger(b)
#     end
#   end
# end
#
#
# fp = File.open(ENV['OUTPUT_PATH'], 'w')
#
#
# _arr_cnt = Integer(gets)
# _arr_i=0
# _arr = Array.new(_arr_cnt)
#
# while (_arr_i < _arr_cnt)
#   _arr_item = Integer(gets);
#   _arr[_arr_i] = (_arr_item)
#   _arr_i+=1
#
# end
#
# res = lonelyInteger(_arr);
# fp.write res;
# fp.write "\n"
#
# fp.close()





# value= '[{]'
h = {'{' => '}', '[' => ']', '(' => ')'}
# p value , h
value ='{[()]}'
a = value.split('')
if   a.count.even?
   b = a.each_slice( (a.size/2.0).round ).to_a
   b[0]
   b[1] = b[1].reverse
   c = 0
   d = []
   b[0].each do |i|
      # p  i ,
         e = h["#{i}"] == b[1][c]
     c= c+1
     d <<  e

   end
   unless d.include? false
     p "YES------"
   else
     p "No---------"
   end
   # p  d
  # p  d.include? false ?  "yes" :  "no"
  # if @item.rigged ? "Yes" : "No"
 # p  b[0] , b[1].reverse
 # p  "yes"
else
  puts "NO------"
end

