class Yeast < ApplicationRecord
    has_many :recipe_yeast_ledgders
    has_many :recipes, through: :recipe_yeast_ledgers
end
