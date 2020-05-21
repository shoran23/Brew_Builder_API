class RecipeYeastLedger < ApplicationRecord
  belongs_to :recipe
  belongs_to :yeast
end
