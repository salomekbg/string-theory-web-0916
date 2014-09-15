def sort_by_appearance(chars, text)
  # make hash where each char is the key, count is value
  count_hash = {}
  final_string = ""
  chars.split("").each do |char| 
    count_hash[char] = 0
  end
  # go through each character in text and increment 
  i = 0
  text.length.times do
    count_hash[text[i]] = count_hash[text[i]] + 1 if count_hash[text[i]]
    i += 1
  end
  # sort hash then add to final string
  count_hash.sort {|a1,a2| a2[1] <=> a1[1] }.each  {|arr| final_string << arr[0] }
  final_string
end