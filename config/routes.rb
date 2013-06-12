Mene::Application.routes.draw do
  root :to => 'home#index'
  
  devise_for :inspetores
  devise_for :gerentes
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
  
end
