class Grain < ApplicationRecord
    has_many :recipe_grain_ledgers
    has_many :recipes, through: :recipe_grain_ledgers
end
