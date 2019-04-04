# A method to reverse the words in a sentence, in place.
# Time complexity: Linear, O(n), where n is the length of the array
# Space complexity: Constant, 0(1)

# reverse_sentence method
def reverse_sentence(my_sentence)
  return nil if my_sentence == nil
  string_reverse(my_sentence) # reverses order of the whole sentence (letters and words)
  reverse_words(my_sentence) # reverses the order of each word (back to their original direction)
  return my_sentence
end

# string_reverse helper method
def string_reverse(my_sentence)
  i = 0
  j = my_sentence.length - 1
  while i < j
    temp = my_sentence[i]
    my_sentence[i] = my_sentence[j]
    my_sentence[j] = temp
    i += 1
    j -= 1
  end
  return my_sentence
end

# reverse_words helper method
def reverse_words(my_sentence)
  start_index = 0
  index = 0

  my_sentence.length.times do
    if my_sentence[index] == " "
      my_sentence = reverse(my_sentence, start_index, index - 1)
      start_index = index + 1
    end
    index += 1
  end
  my_sentence = reverse(my_sentence, start_index, index - 1)

  return my_sentence
end

# reverse helper method (helps reverse_words method)
def reverse(my_sentence, start_index, end_index)
  while start_index < end_index
    temp = my_sentence[start_index]
    my_sentence[start_index] = my_sentence[end_index]
    my_sentence[end_index] = temp
    start_index += 1
    end_index -= 1
  end
  return my_sentence
end
