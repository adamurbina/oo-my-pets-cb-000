class Owner

    attr_reader :species

    @@all = []

    def initialize(owner)
        @@all << self
        @species = "human"
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

    def say_species
        puts "I am a human."
    end

end
