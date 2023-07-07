require 'rspec'
require './lib/node'

RSpec.describe Node do
    it "has data" do
      node = Node.new("plop", nil)
  
      expect(node.data).to eq("plop")
    end

    it "shows nil" do
      node = Node.new("plop", nil)

      expect(node.next_node).to eq(nil)
    end

end