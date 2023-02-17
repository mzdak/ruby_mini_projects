def substrings (text, dictionary)
    result = dictionary.reduce(Hash.new(0)) do |result_hash, word|
        #scan text for each word in dictionary, returns array of matching words and implements block on the array
        #eg. text.scan(/how/) => ["how", "how"] 
        text.downcase.scan(/(#{word})/) do |matched|
            #increments hash by number of matched words
            result_hash[word] += matched.length
        end
        result_hash
    end
    puts result
end

dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]

substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going", dictionary)