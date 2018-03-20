# A method to reverse each word in a sentence, in place.
def reverse_words(my_words)
  return my_words if my_words.nil?

  left = 0

  while left < my_words.length
    right = left

    until my_words[right] == " " || right == my_words.length
      right += 1
    end

    reverse(my_words, left, (right - 1))
    left = right + 1
  end
end

# Time complexity: O(n)
# Reason: have to iterate through the whole string/array only once. The number of operations (n) is equivalent to the length of the input. Therefore, the number of operations grows linearly with the length of the input (ie, if length == 100, n = 100)
# Space complexity: O(1)
# Reason: Increase in input size does not require creation of additional variables (ie, will not occupy more in memory)


def reverse(my_words, left, right)
  while left < right
    temp = my_words[left]
    my_words[left] = my_words[right]
    my_words[right] = temp
    left += 1
    right -= 1
  end
end
