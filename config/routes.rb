# frozen_string_literal: true

Rails.application.routes.draw do
  resources :meals, except: %i[new edit]
  resources :appointments, except: %i[new edit]
  resources :loans, except: %i[new edit]
  resources :borrowers, except: %i[new edit]
  resources :authors, except: %i[new edit]
  resources :recipes, except: %i[new edit]
  resources :doctors, except: %i[new edit]
  # RESTful routes
  resources :examples, except: %i[new edit]
  resources :books, except: %i[new edit]
  resources :patients, except: %i[new edit]
  resources :ingredients, except: %i[new edit]

  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'

  # Books resource routes
  # get '/books' => 'books#index'
  # get '/books/:id' => 'books#show'
  # post '/books' => 'books#create'
  # patch '/books/:id' => 'books#update'
  # delete '/books/:id' => 'books#destroy'
  #
  # # Hospital resource routes
  # get '/patients' => 'patients#index'
  # get '/patients/:id' => 'patients#show'
  # post '/patients' => 'patients#create'
  # patch '/patients/:id' => 'patients#update'
  # delete '/patients/:id' => 'patients#destroy'
  #
  # # Cafeteria resource routes
  # get '/ingredients' => 'ingredients#index'
  # get '/ingredients/:id' => 'ingredients#show'
  # post '/ingredients' => 'ingredients#create'
  # patch '/ingredients/:id' => 'ingredients#update'
  # delete '/ingredients/:id' => 'ingredients#destroy'
end
