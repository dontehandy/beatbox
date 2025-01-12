require 'rspec'
require './lib/linked_list'

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
end
