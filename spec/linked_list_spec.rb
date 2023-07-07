require 'rspec'
require "./lib/linked_list"
require "./lib/node"

RSpec.describe LinkedList do
    xit "exists" do
        list = LinkedList.new(nil)

        expect(list).to be_an_instance_of(LinkedList)
    end

    xit "shows nil" do
        list = LinkedList.new(nil)

        expect(list.head).to eq(nil)
    end

end
