class Owner

    attr_accessor :name, :pets
    attr_reader :species,

    @@all = []

    def initialize(owner)
        @@all << self
        @species = "human"
        @pets = {fishes: [], cats: [], dogs: []}
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
        "I am a human."
    end

    def buy_fish


    end

end
