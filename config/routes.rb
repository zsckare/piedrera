Rails.application.routes.draw do
  devise_for :users
  resources :report

  resources :liquidations

  resources :trucks

  resources :turnos

  resources :ruta

  resources :drivers

  resources :titulars

  root 'welcome#index'

  
  
end
