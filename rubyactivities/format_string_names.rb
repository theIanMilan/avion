list0 = [{name: 'Bart'}, {name: 'Lisa'}, {name: 'Maggie'}, {name: 'Homer'}]
list1 = [{name: 'Bart'}, {name: 'Lisa'}, {name: 'Maggie'}]
list2 = [{name: 'Bart'}, {name: 'Lisa'}]
list3 = [{name: 'Bart'}]
list4 = []

def format_string_of_names(array)
  if array == []
    return ''
  end

  list = array.reduce([]) {|acc, hash| acc << hash[:name]}
  last_name = list.pop
  list.length <= 0 ? last_name : "#{list.join(', ')} & #{last_name}"
end

p format_string_of_names(list0) == "Bart, Lisa, Maggie & Homer"
p format_string_of_names(list1) == "Bart, Lisa & Maggie"
p format_string_of_names(list2) == "Bart & Lisa"
p format_string_of_names(list3) == "Bart"
p format_string_of_names(list4) == ""