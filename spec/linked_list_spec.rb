require_relative 'spec_helper'

RSpec.describe LinkedList do
  it 'exists and has attributes' do
    list = LinkedList.new

    expect(list).to be_an_instance_of(LinkedList)
    expect(list.head).to be_nil
  end

  it 'can append the first node' do
    list = LinkedList.new
    list.append("doop")

    expect(list.head.data).to eq("doop") #head.data is the data of the head node
    expect(list.head.next_node).to be_nil
  end

  it 'can count nodes' do
    list = LinkedList.new
    list.append("doop")

    expect(list.count).to eq(1)
  end

  it 'can convert to string' do
    list = LinkedList.new
    list.append("doop")

    expect(list.to_string).to eq("doop")
  end
end
