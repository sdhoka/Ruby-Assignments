class Node
    attr_accessor :next, :value  
    def initialize(value)
        @value = value
        @next  = nil
    end
end

class LinkedList
    def initialize
        @head = nil
    end

    def add_node(value)
        if @head
            current = @head
            while current.next
                current = current.next
            end
            current.next = Node.new(value)

        else
            @head = Node.new(value)
        end
    end

    def remove_node(value)
        current = @head
        prev = nil
        while (current && current.value != value)
            prev = current
            current = current.next
        end

        if current == @head
            @head = current.next
        else
            prev.next = current.next
        end
    end


    def print
        current = @head
        while current
            puts current.value
            current = current.next
        end
    end
end


ll = LinkedList.new
ll.add_node(2)
ll.add_node(3)
puts ll.inspect
ll.remove_node(2)
ll.remove_node(3)
puts ll.inspect
