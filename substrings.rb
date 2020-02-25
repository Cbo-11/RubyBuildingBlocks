dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
string = string.downcase.gsub(/[^a-z0-9\s]/i, '')
array = string.split(/ /)
hash = {}

dictionary.each do |var| 
    if string.include? var 
        hash[var] = string.scan(/(?=#{var})/).count
    end
end
return hash

end

puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)