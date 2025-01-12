require_relative 'node'

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
    data
  end

  def count
    count = 0
    current = @head
    while current
      count += 1
      current = current.next_node
    end
    count
  end

  def to_string
    elements = []
    current = @head
    while current
      elements << current.data
      current = current.next_node
    end
    elements.join(' ')
  end
end
