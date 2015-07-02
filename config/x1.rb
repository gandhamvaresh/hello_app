# def valid_string?(str)
#   if str.match "(\\[.+\\])" || "|(\\(\\))" || "|({})"
#     return true
#   else
#     return false
#   end
# end
# puts valid_string?("[(]")
#
# puts valid_string?("[ ( text ) {} ( ]")      # returns true

# def smarter_validate(str)
#   stack  = []
#   lookup = { '(' => ')', '[' => ']', '{' => '}', '<' => '>' }
#   left   = lookup.keys
#   right  = lookup.values
#
#   str.each_char do |char|
#     if left.include? char
#       stack << char
#     elsif right.include? char
#       return false if stack.empty? || (lookup[stack.pop] != char)
#     end
#   end
#
#   return stack.empty?
# end

Brackets = {'(' => ')', '[' => ']', '{' => '}'}

# Adds missing close brackets (aborts on error unless @fix).
def fix_closings(str)
  closers = []
  fixed = ""
  str.split(//).each do |c|
    if Brackets.has_key?(c)
# Add expected corresponding bracket to a stack
      closers.push(Brackets[c])
    elsif Brackets.has_value?(c)
      closer = closers.pop
      if closer
# Append any missing closing brackets
        while closer != c
          abort unless @fix
          fixed << closer
          closer = closers.pop
        end
      else
        abort unless @fix
      end
    end
    fixed << c
  end
# If we've hit the end of the description, make sure any leftover
# closing brackets are added
  closers.reverse.each {|a| fixed << a}
  fixed
end
p fix_closings("{}{[][()}")





##-----------------------------------------------------------------------------------------------------







# def revstr(x)
#   n=x.split('').size
#   y=x.split('')
#   z=[]
#   y.each do |i|
#     z[n-i] = y[i]
#   end
#   z
#
#   def xsplit(s, d)
#     return s.split('.')
#   end
#
#   xsplit('abc.def', '.') => ['abc', 'def']
#
#   revstr('abc') => 'cba'
#   revstr('abc def') => 'fed cba'
#
#   def indices(x, y)
#     e =[]
#     x1 = x.split('')
#     y1 =y.split('')
#     f =0
#     if x.size>y.size
#       y1.each do |y2|
#         e << f if x1.include? y2
#         f = f+1
#         p e
#       end
#     else # y.size > x.size
#       x1.each do |y2|
#         e << f if y1.include? y2
#         f = f+1
#         p e
#       end
#       p e
#     end
#     puts e
#   end
#
#
#
#   indices('abc', 'axbydefrdec') => [0, 2, 10]
#   indices('axbyc', 'abc') => [0, 2, 4]
#   indices('ambnc', 'mn') => [ 1, 3 ]
#
#   paren("[[]]") => true
#   paren("[[[[") => false


