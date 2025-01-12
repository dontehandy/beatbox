require './node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def append(data) 
    # creates a new node with the data that we pass into this 
    # method and adds it to the end of the linked list

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

  def count
    # tells us how many nodes are in the list
    count = 0
    current = @head
    while current
      count += 1
      current = current.next_node
    end
    count
  end

  def to_string
    # generates a string containing the data from every node in the list, 
    # separated by spaces
    elements = []
    current = @head
    while current
      elements << current.data
      current = current.next_node
    end
    elements.join(' ')
  end
end
