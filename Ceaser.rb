def ceaser_cipher(str,shift)
    shift
    string = str.downcase.split(//)
    newstring = ''
    alphabet = ("a".."z").to_a

    string.each_with_index do |val,index|
        if alphabet.include? string[index]
            id = alphabet.index(val)
            id = (id+shift)%26
            letter = alphabet[id]
            newstring += letter
        else 
            letter = string[index]
            newstring += letter
        end
    
    end
    return newstring
end

output = ceaser_cipher("Hello World",1)
puts output
