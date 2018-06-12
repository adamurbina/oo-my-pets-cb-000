class Owner

    @@all = []

    def initialize
        @@all << self
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
