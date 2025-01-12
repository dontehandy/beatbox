require 'rspec'
require './lib/node'

RSpec.describe Node do
  it 'exists and has attributes' do
    node = Node.new("plop")

    expect(node).to be_an_instance_of(Node)
    expect(node.data).to eq("plop")
    expect(node.next_node).to be_nil
  end
end
