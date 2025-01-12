require_relative 'spec_helper'

RSpec.describe Node do
  it 'exists and has attributes' do
    node = Node.new("plop") #plop is the argument passed to the new instance of Node

    expect(node).to be_an_instance_of(Node)
    expect(node.data).to eq("plop") 
    expect(node.next_node).to be_nil 
  end
end
