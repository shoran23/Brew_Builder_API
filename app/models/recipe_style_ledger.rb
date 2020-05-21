class RecipeStyleLedger < ApplicationRecord
  belongs_to :recipe
  belongs_to :style
end
