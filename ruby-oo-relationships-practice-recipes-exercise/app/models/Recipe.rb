class Recipe
    attr_accessor :user, :ingredient
    @@all = []

    def initialize

    end

    def self.all
        @@all
    end

end