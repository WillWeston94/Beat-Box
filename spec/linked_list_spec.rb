require 'rspec'
require "./lib/linked_list"
require "./lib/node"


RSpec.describe LinkedList do
    xit "#exists" do
        list = LinkedList.new

        expect(list).to be_an_instance_of(LinkedList)
    end

    xit "#head returns nil" do
        list = LinkedList.new

        expect(list.head).to eq(nil)
    end

    xit "appends a new piece of data" do 
        list = LinkedList.new

        list.append("doop")
        expect(list.head.data).to eq("doop")

        # expect(list.head.next_node.data)
        # expect(list.append).to eq("doop")
    end

    xit "appends then checks next_node" do 
        list = LinkedList.new

        list.append("doop")
        expect(list.head.next_node).to eq(nil)

        # expect(list.head.next_node.data)
        # expect(list.append).to eq("doop")
    end

    it "counts elements in list" do
        list = LinkedList.new

        # append data so count hits as 1 if no nodes are couned it hits as 0
        list.append("doop") 
        list.count
        expect(list.count).to eq(1)
    end

end
