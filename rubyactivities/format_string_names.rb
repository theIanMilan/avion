list0 = [{name: 'Bart'}, {name: 'Lisa'}, {name: 'Maggie'}, {name: 'Homer'}]
list1 = [{name: 'Bart'}, {name: 'Lisa'}, {name: 'Maggie'}]
list2 = [{name: 'Bart'}, {name: 'Lisa'}]
list3 = [{name: 'Bart'}]
list4 = []

def format_string_of_names(array)
  if array == []
    return ''
  end

  list = array.reduce([]) { |acc, hash|
    acc << hash[:name]
  }

  if array.length >= 2
    list[-1] = "& #{list[-1]}"
  end
  
  if array.length > 2
    list.join(', ')
  else
    list.join(' ')
  end
end

p format_string_of_names(list0) == "Bart, Lisa, Maggie, & Homer"
p format_string_of_names(list1) == "Bart, Lisa, & Maggie"
p format_string_of_names(list2) == "Bart & Lisa"
p format_string_of_names(list3) == "Bart"
p format_string_of_names(list4) == ""