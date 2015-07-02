def indices(x, y)
  e =[]
  x1 = x.split('')
  y1 =y.split('')
  f =0
  if x.size>y.sizes
    x1.each do |y2|
      e << f if x1.include? y2
      f = f+1
    end
  else # y.size > x.size
    y1.each do |y2|
      e << f if y1.include? y2
      f = f+1
    end
  end
  p e

end
indices('axbyc', 'abc')# => [0, 2, 4]

def revstr(x)
  n=x.split('').size
  y=x.split('')
  z=[]
  y.each do |i|
    z[n-i] = y[i]
  end
  z

  def xsplit(s, d)
    return s.split('.')
  end

  xsplit('abc.def', '.') => ['abc', 'def']

  revstr('abc') => 'cba'
  revstr('abc def') => 'fed cba'

  def indices(x, y)
    e =[]
    x1 = x.split('')
    y1 =y.split('')
    f =0
    if x.size>y.size
      y1.each do |y2|
        e << f if x1.include? y2
        f = f+1
        p e
      end
    else # y.size > x.size
      x1.each do |y2|
        e << f if y1.include? y2
        f = f+1
        p e
      end
      p e
    end
    puts e
  end



  indices('abc', 'axbydefrdec') => [0, 2, 10]
  indices('axbyc', 'abc') => [0, 2, 4]
  indices('ambnc', 'mn') => [ 1, 3 ]

  paren("[[]]") => true
  paren("[[[[") => false



