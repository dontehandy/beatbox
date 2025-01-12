require_relative 'spec_helper'

RSpec.describe LinkedList do
  it 'exists and has attributes' do
    list = LinkedList.new

    expect(list).to be_an_instance_of(LinkedList)
    expect(list.head).to be_nil
  end

  it 'can append nodes' do
    list = LinkedList.new
    list.append("plop")

    expect(list.head.data).to eq("plop")
    expect(list.head.next_node).to be_nil

    list.append("suu")
    expect(list.head.next_node.data).to eq("suu")
  end

  it 'can prepend nodes' do
    list = LinkedList.new
    list.append("plop")
    list.prepend("dop")

    expect(list.head.data).to eq("dop")
    expect(list.head.next_node.data). to eq("plop")
  end

  it 'can insert nodes at a given position' do
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.insert(1, "woo")

    expect(list.head.data).to eq("plop")
    expect(list.head.next_node.data).to eq("woo")
    expect(list.head.next_node.next_node.data).to eq("suu")
  end

  it 'can count nodes' do
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")

    expect(list.count).to eq(3)
  end

  it 'can convert to string' do
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    list.insert(1, "woo")

    expect(list.to_string).to eq("dop woo plop suu")
  end

  it 'can find elements' do
    list = LinkedList.new
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")

    expect(list.find(2, 1)).to eq("shi")
    expect(list.find(1, 3)).to eq("woo shi shu")
  end

  it 'can check if it includes a value' do
    list = LinkedList.new
    list.append("deep")
    list.append("woo")

    expect(list.includes?("deep")).to be true
    expect(list.includes?("dep")).to be false
  end

  it 'can pop the last element' do
    list = LinkedList.new
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")

    expect(list.pop).to eq("blop")
    expect(list.pop).to eq("shu")
    expect(list.to_string).to eq("deep woo shi")
  end
end
