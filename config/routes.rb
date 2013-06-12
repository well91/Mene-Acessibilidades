Mene::Application.routes.draw do
  devise_for :inspetores, :gerentes
  resources :categorias do
  	member do 
  		get 'criar_caracteristica'
  		get 'remover_caracteristica'
  	end
  end
  resources :locais, :except => :show
  resources :objetos do
  	resources :inspecoes
  end
  root :to => 'home#index'
end
