def caesar_cipher(string, number)
    # Convert String to ASCII
    string_ascii = string.bytes

    #Check for if each char is between (a-z) or (A-Z) or not an alphabet
    coded_ascii = string_ascii.map do |ascii|
        if (ascii.between?(97, 122)) 
            result = ascii + number
            #wrap from z to a
            if (result > 122) 
                result - 26
            else result
            end
        elsif (ascii.between?(65, 90))
            result = ascii + number
            #wrap from Z to A
            if(result > 90) 
                result - 26
            else result
            end
        else ascii
        end
    end
    
    #Convert ASCII to String
    coded_string = coded_ascii.pack("C*")
    puts coded_string
end

caesar_cipher("Hello, World!", 5)