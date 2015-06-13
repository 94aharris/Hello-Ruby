#CaeserCipher can take letter input for string (upper or lower case) and any numerical value for the offset
#input validation is performed only to shift to lower case and verify that the offset is within the proper bounds
##This ceaser cipher currently only words with letters and spaces
##This cipher takes the user input (offset and string) and converts them given the offset

def caesar_cipher(offset, string)
  #split the string into characters in an array (word_arr), sets up another
  #array (ord_word_arr) and variable idx1 (used for a counter)
  string = string.downcase
  if offset > 26
    while offset > 26
      offset = offset - 26
    end
  end
  word_arr = string.split(//)
  ord_word_arr = []
  idx1 = 0
  
  #This loop converts the characters in word_arr to ASCII numbers, moves them
  #into the ord_word_arr array, and increments them by the offset
  while idx1 < word_arr.length
    ord_letter = word_arr[idx1].ord
    if ord_letter >= 97 && (ord_letter + offset) <= 122 #standard offset
      ord_letter = ord_letter + offset
    elsif ord_letter >= 97 && (ord_letter + offset) > 122 #offset that wraps
      new_set = offset - (122 - ord_letter)
      ord_letter = 96 + new_set
    else     #prevents spaces from being offset
      ord_letter = ord_letter
    end
    ord_word_arr.push(ord_letter)  #pushes the offset ASCII to array
    idx1 = idx1 + 1
  end
  
  #resets the counter variable and clears the word_arr array
  idx1 = 0
  word_arr = []
  
  # converts ASCII numbers back to characters and moves them to word_arr array
  while idx1 < ord_word_arr.length
    chr_letter = ord_word_arr[idx1].chr
    word_arr.push(chr_letter)
    idx1 = idx1 + 1
  end
  
  #joins the characters in word_arr into a single string (new_str)
  new_str = word_arr.join
  
  #return new_str with the offset letters
  return new_str
end



#Receive input from user
puts("Welcome to the Caesar Cipher encryption machine!")
puts("Please enter your string, letters and spaces only")
string = gets.chomp
puts("Please enter your offset")
offset = gets.chomp
puts("your original string")
puts(string)
puts("your encrypted string")
puts(caesar_cipher(offset.to_i, string))
