Rails.application.routes.draw do
  
  root to: 'homes#top'
  resources :books
  patch 'edit_book_path/:id' => 'books#update', as: 'update_book'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  class Book<ApplicationRecord
    validates :title, presence: true
    validates :body, presence: true
  end
end
