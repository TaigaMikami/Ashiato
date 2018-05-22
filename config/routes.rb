Rails.application.routes.draw do
  devise_for :users
  root to: 'home#top'
  get 'home/about', as: :about
  get 'home/contact', as: :contact
end
