require "./lib/node"

class LinkedList
    attr_accessor :head
                
     # initialize head = nil "no active nodes"           
    def initialize
        @head = nil
    end

    # append adds new piece of data to end of list 
    def append(data)
        # add a peice of data 
        if @head.nil?
            #varaible = Node with data stored inside of it
            @head = Node.new(data, nil)
        else # variable already assigned @head 
            last_node = @head # this is our last node we know we have a head
            while (!last_node.next_node.nil?) # while the last nodes next node is not nil
                last_node = last_node.next_node # last node updated 
            end
            # end of list
            last_node.next_node = Node.new(data, nil)
        end
    end

    def count
         
        0 if @head
        node = @head
        counter = 0
        while node do
            node = node.next_node
            counter += 1
        end
        counter
    end


    
    def find(data)
        node = @head
        while(!node.next_node.nil?)
            if(node.data == data)
                return true
            end
            #escape while loop to reiterate and check all nodes not just the first node if the line below is not there it will infinite loop true 
            node = node.next_node 
        end
        false
    end
end 



    # private 

    # class Node
    #     #allows us to get and set next_node with access
    #     attr_accessor :data, :next_node 
    
    #     def initialize(data, next_node)
    #       @data = data
    #       @next_node = next_node
    #     end
    
    #     def tail?
    #       next_node.nil?
    #     end
    # end

    # ll = LinkedList.new
    # ll.append("doop")
    # ll.append("deeo")
    # puts ll.head.data
    # puts ll.head.next_node.data
    # puts ll.find("doop")
    # puts ll.find("plop")



