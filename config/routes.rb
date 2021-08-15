Rails.application.routes.draw do
  get '/', to: 'authors#index'
  post '/search_authors', to: 'authors#search_authors'
  post '/querry_books', to: 'authors#querry_books'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
