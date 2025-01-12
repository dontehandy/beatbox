require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def append(data)
    @head = Node.new(data) if @head.nil?
  end

  def count
    @head.nil? ? 0 : 1 #if head is nil, return 0, otherwise return 1
  end

  def to_string
    @head.nil? ? '' : @head.data #if head is nil, return an empty string, otherwise return the data of the head
  end
end
