class Recipe < ApplicationRecord
    has_many :recipe_grain_ledgers
    has_many :grains, through: :recipe_grain_ledgers

    has_many :recipe_hop_ledgers
    has_many :hops, through: :recipe_hop_ledgers

    has_many :recipe_yeast_ledgers
    has_many :yeasts, through: :recipe_yeast_ledgers
end
