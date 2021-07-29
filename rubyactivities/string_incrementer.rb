# frozen_string_literal: true

# Write a function which increments a string, to create a new string.
# If the string already ends with a number, the number should be incremented by 1.
# If the string does not end with a number. the number 1 should be appended to the new string.

def string_incrementer(str)
  # String not ending in number
  return "#{str}1" unless str[-1].match?(/[0-9]/)

  # String ends in number not ending in 9
  return "#{str[0..-2]}#{str[-1].to_i + 1}" unless str[-1] == '9'

  # String ends in number ending in 9
  num_index = str.index(/[1-9]/)
  num = str[num_index..].to_i + 1

  # If leading number is 9 and next to a 0
  return str[0..num_index - 2] + num.to_s if str[num_index] == '9' && str[num_index - 1] == '0'

  # If leading number is 9 and not next to a 0
  # and if leading number is 9 and next to a 0
  str[0..num_index - 1] + num.to_s
end

p string_incrementer('foo') == 'foo1'
p string_incrementer('foobar23') == 'foobar24'
p string_incrementer('foo0042') == 'foo0043'
p string_incrementer('foo9') == 'foo10'
p string_incrementer('foo099') == 'foo100'
p string_incrementer('foo000999') == 'foo001000'
p string_incrementer('foo01019') == 'foo01020'
