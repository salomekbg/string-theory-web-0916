def sort_by_appearance(chars, text)                                             
  result = chars.split('').map do |c, h|                                        
    [c, text.scan(c).count]                                                     
  end                                                                          
  result.sort_by{|arr| -arr.last}.map(&:first).join                                                                                                                                  
end

# dense, 3 line version: 
#
# def sort_by_appearance(chars, text)
#   count = chars.split("").each_with_object({}) { |c, h| h[c] = 0 }
#   text.split("").each { |c| count[c] += 1 if count.keys.include?(c) }
#   count.to_a.sort_by { |a| a[1] }.collect {|a| a.first }.reverse.join
# end
