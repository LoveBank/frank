Frank::Engine.routes.draw do
  resources :insights
  resources :posts
  resources :actions
  resources :comments
  resources :entries
  resources :families
  resources :love_banks
  resources :moods
  resources :profiles
  resources :events
  resources :appointments
end
