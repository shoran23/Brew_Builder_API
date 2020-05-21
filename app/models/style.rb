class Style < ApplicationRecord
    has_many :recipe_style_ledgers
    has_many :recipes, through: :recipe_style_ledgers
end
