Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # As a user I can see all found pets
  get '/pets', to: 'pets#index', as: :pets
  # As a user I can see details about one found pet (when and where it was found)
  # As a user I can add a pet I found
  get '/pets/new', to: 'pets#new' # just webpage, with a form
  post '/pets', to: 'pets#create' # actual path to submit the form data

  # <form action="/pets" method='post'>
  # </form>

  # github.com/aggy-k
  get '/pets/:id', to: 'pets#show', as: :pet

  # As a user I can update a pet
  get '/pets/:id/edit', to: 'pets#edit', as: :edit_pet
  patch '/pets/:id', to: 'pets#update'
  # <form action="/pets/145" method='patch'>
  # </form>

  # As a user I can delete a pet
  delete '/pets/:id', to: 'pets#destroy', as: :delete_pet

  # resources :pets
end
