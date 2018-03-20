# A method to reverse each word in a sentence, in place.
def reverse_words(my_words)
  return my_words if my_words.nil?

  left = 0

  while left < my_words.length
    right = left

    until my_words[right] == " " || right == my_words.length
      right += 1
    end

    if right != left
      reverse(my_words, left, (right - 1))
    end

    left = right + 1
  end
end


def reverse(my_words, left, right)
  while left < right
    temp = my_words[left]
    my_words[left] = my_words[right]
    my_words[right] = temp
    left += 1
    right -= 1
  end
end
