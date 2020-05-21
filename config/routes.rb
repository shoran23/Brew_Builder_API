Rails.application.routes.draw do
  resources :recipe_style_ledgers
  resources :recipe_yeast_scaffolds
  resources :recipe_grains
  resources :ledgers
  resources :recipe_yeast_ledgers
  resources :recipe_hop_ledgers
  resources :recipe_grain_ledgers
  resources :recipes
  resources :yeasts
  resources :hops
  resources :grains
  resources :styles
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
