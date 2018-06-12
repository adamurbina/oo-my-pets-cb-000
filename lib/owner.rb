class Owner

    @@all = []

    def initialize
        self.all << self
    end

    def add_owner
        Owner.all << self
    end

    def self.all
        @@all
    end

    def self.count
        self.all.count
    end

    def self.reset_all
        @@all = []
    end

end
