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

  def find(position, elements)
    current = @head
    position.times do
      current = current.next_node
    end

    result = []
    elements.times do
      result << current.data
      current = current.next_node
    end
    result.join(' ')
  end

  def includes?(data)
    current = @head
    while current
      return true if current.data == data
      current = current.next_node
    end
    false
  end

  def pop
    return nil if @head.nil?

    if @head.next_node.nil?
      data = @head.data
      @head = nil
      return data
    end

    current = @head
    while current.next_node.next_node
      current = current.next_node
    end

    data = current.next_node.data
    current.next_node = nil
    data
  end
end
