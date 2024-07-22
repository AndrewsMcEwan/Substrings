def substrings(text, dictionary)
  # Initialize an empty hash for substring counts
  counts = Hash.new(0)

  # Convert dictionary elements to lowercase for case-insensitive search
  lower_dict = dictionary.map(&:downcase)

  # Split the text into lowercase words using split and downcase
  words = text.downcase.split

  # Iterate through each word in the text
  words.each do |word|
    # Find occurrences of substrings within the current word
    lower_dict.each do |substring|
      start_index = 0
      while (index = word.index(substring, start_index)) != nil
        counts[substring] += 1
        start_index = index + substring.length
      end
    end
  end

  # Return the hash containing substring frequencies
  counts
end

# Test case with multiple words
text = "below down go going horn how howdy it i low own part partner sit"
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings(text, dictionary)  
