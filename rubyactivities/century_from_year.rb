def centuryFromYear(year)
  if year.to_s[2..3].to_i.between?(01,99)
    year += 100
  end

  year.to_s[0..1].to_i
end

p centuryFromYear(1705) == 18
p centuryFromYear(1900) == 19
p centuryFromYear(1601) == 17
p centuryFromYear(2000) == 20