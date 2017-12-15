# Ruby Methods
# can define methods similarly to other languages
def hello_world
    puts "hello world"
end
hello_world

# Breakdown
# use snake_case for method names
# parenthesis are optional

# Input
def say_hello name1, name2
    puts "hello, #{name1} and #{name2}"
end
say_hello "oscar", "eduardo"
# feel free to use parenthesis for readability

# Default parameters
# def say_hello name1="arden", name2="gobby"

# Regular Return Statements
# if need to escape function early, return behaves normally
def say_what name1, name2
    if name1.empty? or name2.empty?
        return "what"
    end
    "hello, #{name1} and #{name2}"
end
puts say_what "test", "test"