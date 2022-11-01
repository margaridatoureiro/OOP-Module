require "pry-byebug"

def capitalize(first, last)
  first_name = first.capitalize
  # binding.pry
  last_name = last.capitalize
  return "#{first_name} #{last_name}"
end

# binding.pry

p capitalize("margarida", "toureiro")


# HOW TO USE 
# gem install pry-byebug (on the terminal, once)
# require "pry-byebug" (top of the file)
# `binding.pry` anywhere on the file (breakpoints)

#---------------------------------------------
# COMMANDS
# `next` -> executes the next line of the program
# `continue` -> executes until the next `binding.pry`, or to the end of the program if there is no `binding.pry`
# `=>` indicates the next line of code to be executed 

# AFTER DEBBUGING
# REMOVE ALL `binding.pry` !!!!!!!

