def count_smileys(arr)

  counter = 0

  # the regex can be interpreted as such
  # the (:|;){1} matches exactly 1 occurrence of ':' or ';'
  # the (-|~)? matches 0 or 1 occurence of '-' or '~'
  # the (\)|D){1} matches exactly 1 occurrence of ')' or D. '\' escapes ')'
  arr.each do |smiley|
    if !(smiley =~ /^(:|;){1}(-|~)?(\)|D){1}$/).nil? == true then
      counter += 1
    end
  end

  counter

end