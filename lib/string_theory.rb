def sort_by_appearance(chars, text)
  chars = chars.split("")  
  counts = chars.each_with_object(Hash.new) { |l, c| c[l] = 0 }
  text.split("").each { |c| counts[c] += 1 if counts.keys.include?(c) }
  sorted = counts.to_a.sort_by{ |a| a[1]}.reverse
  sorted.collect {|ar| ar[0]}.join
end

# 3 line version: 
#
# def sort_by_appearance(chars, text)
#   count = chars.split("").each_with_object({}) { |c, h| h[c] = 0 }
#   text.split("").each { |c| count[c] += 1 if count.keys.include?(c) }
#   count.to_a.sort_by { |a| a[1] }.collect {|a| a.first }.reverse.join
# end