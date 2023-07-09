require "./lib/node"

class LinkedList
    attr_accessor :head
                
     # initialize head = nil "no active nodes"           
    def initialize
        @head = nil
    end

    # append adds new piece of data to list
    def append(data)
        @head = Node.new(data)
    end

    # if head is nil counts list as 0
    # if appended data counts list as 1 for doop
    # need to refactor. Hard code worked the counter does not
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

end
    
