class Pannier

    MAX_CARGO_ITEMS = 10

    attr_accessor :cargo_contents

    def initialize()
        @cargo_contents = []
    end

    def add_item(item)
        self.cargo_contents << item
    end
    
    def remove_item(item)
        self.cargo_contents.remove(item)
    end

    def pannier_capacity
        MAX_CARGO_ITEMS
    end
    
    def pannier_remaining_capacity
        self.pannier_capacity - self.cargo_contents.size
    end

end
