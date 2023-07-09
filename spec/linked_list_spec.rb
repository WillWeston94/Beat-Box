require 'rspec'
require "./lib/linked_list"
require "./lib/node"


RSpec.describe LinkedList do
    it "#exists" do
        list = LinkedList.new

        expect(list).to be_an_instance_of(LinkedList)
    end

    it "#head returns nil" do
        list = LinkedList.new

        expect(list.head).to eq(nil)
    end

    it "appends a new piece of data" do 
        list = LinkedList.new

        list.append("doop")
        expect(list.head.data).to eq("doop")

        # expect(list.head.next_node.data)
        # expect(list.append).to eq("doop")
    end

    it "appends then checks next_node" do 
        list = LinkedList.new

        list.append("doop")
        expect(list.head.next_node).to eq(nil)

        # expect(list.head.next_node.data)
        # expect(list.append).to eq("doop")
    end

    it "appends a new piece of data" do 
        list = LinkedList.new

        list.append("deep")
        expect(list.head.data).to eq("deep")

        # expect(list.head.next_node.data)
        # expect(list.append).to eq("deep")
    end


    it "counts elements in list" do
        list = LinkedList.new

        # append data so count hits as 1 if no nodes are couned it hits as 0
        list.append("doop") 
        list.append("deep")
        list.count
        expect(list.count).to eq(2)
    end


end
