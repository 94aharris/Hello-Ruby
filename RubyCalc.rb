## This is a simple command line calculator written in Ruby. 
## Functions which I intend to include:
## Addition, Subtraction, Multiplication, Division, Factorals, "Add from 1 to num", Modulation, Prime Number Tester
## "Which Number is Greater", "Order of Operations Helper"

# Checks the initial user input to see what they want to do
def InputCheck(user_input)
    if user_input.downcase == "help"
        help_menu()
    end
end

# Ruby Calculator Help Menu
def help_menu
    puts("The Ruby Calculator Can Perform The Following Operations")
    puts("Addition, Subtraction, Multiplication, Division, Factorals, '1 to num', Modulation, Prime Number Test, ")
    puts("Greater Number, Order of Operations")
    puts("To find out more about a particular operation type one of the options from the list above:")
    help_menu_input = gets
    
    if help_menu_input == "exit"
    elsif help_menu_input.downcase == "addition"
    elsif help_menu_input.downcase == "subtraction"
    elsif help_menu_input.downcase == "multiplication"
    elsif help_menu_input.downcase == "division"
    elsif help_menu_input.downcase == "factorals"
    elsif help_menu_input.downcase == "1 to num"
    elsif help_menu_input.downcase == "modulation"
    elsif help_menu_input.downcase == "prime number test"
    else 
        puts("option not recognized, please type an option or type 'exit' to enter the help menu")
    end
end
        
# Main Code
puts("Welcome To The Ruby Calculator!")
puts("Go ahead and try an operation or type 'Help' for a list of what you can do.")
InputCheck(STDIN.gets)