Rails.application.routes.draw do
  get 'books/genre/:genre_id' => 'books#show'
  resources :genres, only: [:index, :show]
  resources :books, only: [:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
