Rails.application.routes.draw do

  root 'clients#index'

  # root 'projects#index'
  # resources :clients
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
  # # namespace :admin do
  #   resource :college
  # #   # root 'school#create'
  # # end
  # #
  # scope module: :manager do
  #   resources :school
  # end

  # resources :posts, only: [:index, :update] do
  #   get 'verify_user', on: :collection
  # end

  # resources :humans, only: [:index, :update] do
  #   get 'verify_user', on: :collection
  # end
end
