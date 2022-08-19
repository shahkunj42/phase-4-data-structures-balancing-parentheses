require_relative './stack'

def balancing_parentheses(string)
    stack = Stack.new

    string.chars.each do |char| 
        if stack.peek == '(' && char == ')'
            stack.pop
        else
            stack.push(char)
        end
    end

    stack.size
end
