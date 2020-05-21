class Hop < ApplicationRecord
    has_many :recipe_hop_ledgers
    has_many :recipes, through: :recipe_hop_ledgers
end
