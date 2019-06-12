class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

def print_values(list_node)
  if list_node
    print "#{list_node.value} --> "
    print_values(list_node.next_node)
  else
    print "nil\n"
    return
  end
end

class Stack
  attr_reader :first

  def initialize
    @first = nil
  end

  # Push a value onto the stack
  def push(value)
    @first = LinkedListNode.new(value, @first)
  end

    # Pop an item off the stack.
    # Remove the last item that was pushed onto the
    # stack and return the value to the user
  def pop
    raise "Stack is empty" if is_empty?
    top = @first.value
    @first = @first.next_node
    top
  end

  def is_empty?
    @first.nil?
  end
end

def reverse_list(list)
  output_list = Stack.new

  while list
    output_list.push(list)
    list = list.next_node
  end
  output_list
end

stack = Stack.new
stack.push(1)
stack.push(2)
stack.push(3)
stack.push(4)

output_list = reverse_list(stack.first)
puts output_list.pop.inspect
puts output_list.pop.inspect

