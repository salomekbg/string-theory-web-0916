def sort_by_appearance(characters_to_sort, long_text)
  hash = Hash.new(0)
  characters_to_sort.split('').each do |char|
    long_text.split('').each do |letter|
      char == letter ? hash[char] += 1 : hash[char] += 0
    end
  end
  sorted_hash = hash.sort_by {|k, v| v}.reverse
  string = ""
  sorted_hash.each {|x| string << x[0]}
  string
end
