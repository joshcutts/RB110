
=begin

PROBLEM:
input: string command
output: various commands

n - places value in register, does not modify stack
PUSH


=end

require "pry"

def minilang(commands)
  stack = []
  register = 0
  args = commands.split
  
  args.each do |arg|
    case arg
    when "PUSH"
      stack << register.to_i
    when "ADD"
      register += stack.pop
    when "SUB"
      register -= stack.pop
    when "MULT"
      register *= stack.pop
    when "DIV" 
      register /= stack.pop
    when "MOD"
      register = register % stack.pop
    when "POP"
      register = stack.pop
    when "PRINT"
      puts register
    else
      register = arg.to_i
    end
  end
end

# minilang("PRINT")

# minilang("5 PUSH 3 MULT PRINT")
# minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# minilang('5 PUSH POP PRINT')
# minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# minilang('-3 PUSH 5 SUB PRINT')
minilang('6 PUSH')
