require 'rspec'
require 'pry'
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

    it "#appends data doop" do
        list = LinkedList.new

        list.append("doop")
        expect(list.head.data).to eq("doop")
    end

    it "#generates string of elements in the list" do
        list = LinkedList.new

        list.append("doop")
        list.append("deep")
        expect(list.head.to_string).to eq("doop deep")
    end

    it "# prepends nodes to the beginning of the list" do

    end

end