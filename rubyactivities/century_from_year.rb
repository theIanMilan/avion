def centuryFromYear(year)
  return 1 if year < 100
  
  if year.to_s[-2..-1].to_i.between?(01,99)
    year += 100
  end

  year.to_s[0..(year.to_s.length - 3)].to_i
end

p centuryFromYear(1705) == 18
p centuryFromYear(1900) == 19
p centuryFromYear(1601) == 17
p centuryFromYear(2000) == 20
p centuryFromYear(900) == 9
p centuryFromYear(901) == 10
p centuryFromYear(90) == 1
p centuryFromYear(9) == 1