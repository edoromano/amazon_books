Rails.application.routes.draw do
  defaults format: :json do
    resources :books, :only => [:show, :index]
    get '/books/isbn/:isbn', to: 'books#show'
    get '/genres', to: 'genres#index'
    get '/genres/:id/books', to: 'genres#show'
  end
end
