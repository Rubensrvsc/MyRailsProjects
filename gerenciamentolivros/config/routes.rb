Rails.application.routes.draw do
  resources :reads
  resources :books do
    member do
      get 'informacao_livro'
      get 'leituras'
    end
  end
  resources :authors do
    member do
      get 'adicionar_livro'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
