

def paren(str)
  hash_map = {'(' => ')', '[' => ']', '{' => '}'}
  arr = []
  app = ''
  str.split('').each do |c|
    if hash_map.has_key?(c)
      arr.push(hash_map[c])
    elsif hash_map.has_value?(c)
      closer = arr.pop
      begin
        unless closer == c
          return  closer == c
        end
      end
    end
    app << c
  end
  app == str
end
p paren("{}{([)}")

________________________________________________________________________________________________________

def indices(x, y)
  e =[]
  x1 = x.split('')
  y1 =y.split('')
  f =0
  if x.size>y.size
    x1.each do |y2|
      e << f if y1.include? y2
      f = f+1

    end
  else # y.size > x.size
    y1.each do |y2|
      e << f if x1.include? y2
      f = f+1
    end
  end
  p e
end



indices('abc', 'axbydefrdec') #=> [0, 2, 10]
indices('axbyc', 'abc') #=> [0, 2, 4]
indices('ambnc', 'mn')# => [ 1, 3 ]


_____________________________________________________________________________________________________




