Mene::Application.routes.draw do
  devise_for :inspetores, :gerentes
  resources :objetos, :locais, :categorias
end
