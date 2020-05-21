class RecipeHopLedger < ApplicationRecord
  belongs_to :recipe
  belongs_to :hop
end
