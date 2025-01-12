require_relative 'spec_helper'

RSpec.describe LinkedList do
  it 'exists and has attributes' do
    list = LinkedList.new

    expect(list).to be_an_instance_of(LinkedList)
    expect(list.head).to be_nil
  end

  it 'can append nodes' do
    list = LinkedList.new
    list.append("doop")

    expect(list.head.data).to eq("doop")
    expect(list.head.next_node).to be_nil

    list.append("deep")
    expect(list.head.next_node.data).to eq("deep")
  end

  it 'can prepend nodes' do
    list = LinkedList.new
    list.append("doop")
    list.prepend("deep")

    expect(list.head.data).to eq("deep")
    expect(list.head.next_node.data).to eq("doop")
  end

  it 'can insert nodes at a given position' do
    list = LinkedList.new
    list.append("doop")
    list.append("woo")
    list.insert(1, "deep")

    expect(list.head.data).to eq("doop")
    expect(list.head.next_node.data).to eq("deep")
    expect(list.head.next_node.next_node.data).to eq("woo")
  end

  it 'can count nodes' do
    list = LinkedList.new
    list.append("doop")
    list.append("deep")

    expect(list.count).to eq(2)
  end

  it 'can convert to string' do
    list = LinkedList.new
    list.append("doop")
    list.append("deep")

    expect(list.to_string).to eq("doop deep")
  end
end
