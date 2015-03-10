def sort_by_appearance(string, text)
  string.chars.sort_by do |c| 
    text.scan(c).count
  end.reverse.join
end
