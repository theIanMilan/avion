def encode(string)
  hash = {a:1, e:2, i:3, o:4, u:5}
  hash.reduce(string) {|acc, (k,v)| acc.gsub(k.to_s, v.to_s)}
end

def decode(string)
  hash = {'1' => "a", '2' => "e", '3' => "i", '4' => "o", '5' => "u"}
  hash.reduce(string) {|acc, (k,v)| acc.gsub(k.to_s, v.to_s)}
end

p encode("hello") == 'h2ll4'
p decode('h3 th2r2') == 'hi there'