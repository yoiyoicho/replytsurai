Rails.application.routes.draw do
  get 'twitter/search', to: 'twitter#search'
  get 'twitter/show', to: 'twitter#show'
  get 'yahoo/show', to: 'yahoo#show'
  root to: 'home#index'
end
