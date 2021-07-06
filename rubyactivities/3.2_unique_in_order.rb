# Implement the function unique_in_order which takes as argument a sequence and returns a list of items without any elements
# with the same value next to each other and preserving the original order of elements.

def unique_in_order(obj)
  answer = []

  unless obj.is_a?(Array)
    obj = obj.split('')
  end

  obj.each {|e| answer << e if answer[-1] != e}
  return answer
end

p unique_in_order('AAAAABBBCCDAAABBB') == ["A", "B", "C", "D", "A", "B"]
p unique_in_order('ABBCcAD') == ["A", "B", "C", "c", "A", "D"]
p unique_in_order([1,2,2,3,3]) == [1, 2, 3]