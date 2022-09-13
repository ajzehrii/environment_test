Rails.application.routes.draw do
  resources :books do
    collection do
      get ':id/delete', :to => "books#delete", :as => 'delete'
    end
  end
  resources :books 
  root 'books#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

