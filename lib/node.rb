class Node
    attr_accessor :data, :next_node
  
    def initialize(data, next_node)
      @data = data
      @next_node = next_node
    end

    node = Node.new("plop", nil)

    
end