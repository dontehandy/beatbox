require './node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def append(data)
    if @head.nil?
      @head = Node.new(data)
    else
      current = @head
      while current.next_node
        current = current.next_node
      end
      current.next_node = Node.new(data)
    end
  end
end
