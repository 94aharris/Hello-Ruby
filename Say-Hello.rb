puts("Hello, my name is Ruby what is your name?")
UserName = gets.chomp
puts("Well hello there #{UserName}.It is very nice to meet you")
if UserName[0].ord.between?(96,122)
    puts("Your name starts with a lower case letter!")
end
puts("#{UserName} backwards comes out to be")
puts(UserName.split(//).sort{|a,z| z<=>a}.join)
if !UserName.include?(" ")
    puts("It looks like you only told me your first name... mind telling me your last name?")
end