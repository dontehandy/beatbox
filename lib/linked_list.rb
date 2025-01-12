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

  def prepend(data)
    new_node = Node.new(data)
    new_node.next_node = @head
    @head = new_node
  end

  def insert(position, data)
    return prepend(data) if position == 0

    current = @head
    (position - 1).times do
      current = current.next_node
    end

    new_node = Node.new(data)
    new_node.next_node = current.next_node
    current.next_node = new_node
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
