Rails.application.routes.draw do
  get 'twitter/search', to: 'twitter#search'
  get 'twitter/show', to: 'twitter#show'
  get 'twitter/show2', to: 'twitter#show2'
  get 'yahoo/show', to: 'yahoo#show'
  get 'yahoo/show2', to: 'yahoo#show2'
  root to: 'home#index'
end
