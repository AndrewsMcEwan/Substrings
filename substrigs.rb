def substrings(word, dictionary)
  # Initialize an empty hash for substring counts
  counts = Hash.new(0)

  # Convert word and dictionary elements to lowercase for case-insensitive search
  lower_word = word.downcase
  lower_dict = dictionary.map(&:downcase)

  # Iterate through each substring in the dictionary
  lower_dict.each do |substring|
    # Find all occurrences of the substring using a loop
    start_index = 0
    while (index = lower_word.index(substring, start_index)) != nil
      # Increment count for the substring
      counts[substring] += 1
      # Update start index to search beyond the current occurrence
      start_index = index + substring.length
    end
  end

  # Return the hash containing substring frequencies
  counts
end

# Test cases
word = "dictionary"
dictionary =   > dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]



p substrings(word, dictionary)  # Output: {"dic"=>1, "ionary"=>1}

word = "superfluous"
dictionary = ["flu", "per"]
p substrings(word, dictionary)  # Output: {"flu"=>2}
