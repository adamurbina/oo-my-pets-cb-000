class Owner

    attr_accessor :name, :pets
    attr_reader :species

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

    def buy_fish(name)
        fish = Fish.new(name)
        pets[:fishes] << fish
    end

    def buy_cat(name)
        cat = Cat.new(name)
        pets[:cats] << cat
    end

    def buy_dog(name)
        dog = Dog.new(name)
        pets[:dogs] << dog
    end

    def walk_dogs
        pets[:dogs].each{|dog|
        dog.mood = "happy"}
    end

    def list_pets
        "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
    end

end
