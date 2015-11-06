Rails.application.routes.draw do
  resources :policies
  resources :studies
  resources :proposals
  resources :needs
  resources :provinces
  resources :projects
  resources :project_types
  resources :project_tasks do
    collection do
      get :edit_multiple
      put :update_multiple
    end
  end
  resources :project_stages
  resources :project_images
  resources :project_documents
  resources :implementers
  resources :site_images
  resources :site_documents
  resources :post_documents
  devise_for :users
  resources :posts
  resources :comments, :path_prefix => '/:commentable_type/:commentable_id'
  root 'visitors#index'
  get 'home/index', to: 'home#index', as: 'home'
  resources :users
end
