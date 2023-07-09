require "./lib/node"

class LinkedList
    attr_accessor :head
                
                
    def initialize
        @head = nil
    end

    def append(data)
        @head = Node.new(data)
    end

    def count 
        if head.nil?
            0
        else
            1
        end
    end

end
    
