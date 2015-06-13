def LetterChanges(str)
  alpha = ['A','b','c','d','E','f','g','h','I','k','j','l','m','n','O','p','q','r','s','t','U','v','w','x','y','z']
  idx1 = 0
  new_string = []
  while idx1 < str.length
    idx2 = 0
    while idx2 < alpha.length
      if str[idx1] == 'z'
        new_string.push('A')
        break
      elsif str[idx1] == alpha[idx2].downcase
        new_string.push(alpha[idx2 + 1])
        break
      elsif idx2 == (alpha.length - 1)
        new_string.push(str[idx1])
        break
      else
        idx2 = idx2 + 1
      end
    end
    idx1 = idx1 + 1
  end
  return new_string.join
        
end
   
# keep this function call here 
# to see how to enter arguments in Ruby scroll down   


puts(LetterChanges("heellooo"))
