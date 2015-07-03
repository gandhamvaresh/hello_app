

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


