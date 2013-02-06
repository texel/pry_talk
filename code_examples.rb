# $ rvm use 1.9.3@pry_talk
# $ set theme to tomorrow night bright presentation

# What is Pry?
# REPL (Read Eval Print Loop)
# Intended as a replacement for IRB (feature set is a superset of IRB)

# Installing Pry
# $ gem install pry pry-doc


# Pry paginates results, colors syntax, and pretty prints by default.
# Long output gets piped to less, which lets you navigate and search 
# returned values

ENV
	
# Pry can be used to browse rdoc documentation

show-doc Array#each
? pry

# We can also show the source code from a method

show-method pry
$ Array#each

# If we need a bit more context, print out line numbers

$ -l pry

# Prepend shell commands with a .

.pwd

# There are also some convenient gem-related commands

gem-list
gem-open json

# Pry allows some pretty powerful object introspection and 
# stack navigation

# Create a new person…

require './person'
leigh = Person.new

# Oh no, looks like Person#initialize takes 2 arguments.
# That showed us the error, so let's get a little more 
# information about the backtrace

wtf?

# That shows the backtrace for the last error thrown. As expected, 
# it happened in Person#initialize. 
# So let's look at the documentation for that method... 

? Person#initialize

Person.new('Leigh', 5.7, 155)

# Oh no, I forgot to store that person in a variable!
# Luckily, just like IRB, Pry lets me use _ to get at
# the last variable.
leigh = _

cd leigh

# So now my execution scope is actually *inside* the Person object, 
# and I can confirm this with another built-in command:

whereami

# So now I can print out state that I normally wouldn't be able to 
# easily access, such as instance variables

@weight
@height

# I can also list the constants, methods, and variables in 
# the current scope

ls

# … or in other scopes

ls String

# Pry also integrates w/ my editor, to let me edit my code

edit Person#description #put in a binding.pry, save and close - 

# Pry also lets me drop into a REPL from within running code

cd ..
leigh.description

# Pry lets you manipulate the input buffer, so typing the wrong 
# thing isn't quite as frustrating

def helo(string)
  puts "hello #{string}"
amend-line 1 def hello(string)
end

# I can also use ! to bug out of input completely
!
