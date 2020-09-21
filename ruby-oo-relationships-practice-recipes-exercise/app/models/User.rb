class User
    attr_accessor :recipe, :rating, :date, :allergy, :user
    @@all = []

    def initialize(user)
        @user = user
        @@all << self
    end

    def self.all
        @@all
    end

    def add_recipe_card(recipe, rating, date)
        RecipeCard.new(self, recipe, rating, date)
    end

    def recipe_cards
        RecipeCard.all.select do |recipe|
            recipe.user == self
        end
    end

    def recipes
        self.recipe_cards.map do |recipe_card|
            recipe_card.recipe
        end
    end

    def declare_allergy(ingredient)
        Allergy.new(self, ingredient)
    end

    def user_allergies
        Allergy.all.select do |allergy|
            allergy.user == self
        end
    end

    def allergens
        self.user_allergies.map do |allergy|
            allergy.ingredient
        end
    end

end