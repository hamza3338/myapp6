Rails.application.routes.draw do

  resources :stories
  root 'clients#index'
  resources :clients
  # root 'projects#index'

  # get '/projects', to: 'clients#index'

  # resource :project
  #
  # resources :posts, shallow: true do
  #   resources :comments do
  #     resources :replies
  #   end
  # end
  # #
  # # resource :post do
  # #   resource :comment do
  # #     resource :reply
  # #   end
  # # end
  #
  # namespace :admin do
  #   resources :college
  # end
  #
  # scope module: :manager, path: 'fu', as: 'cool' do
  #   resources :school
  # end

  # resources :posts, only: [:index, :update] do
  #   get 'verify_user', on: :collection
  # end

  # resources :humans, only: [:index, :update] do
  #   get 'verify_user', on: :collection
  # end
end
