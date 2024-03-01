Rails.application.routes.draw do
 
  
  get    'apples/yshow'      => 'apples#yshow'
  get    'apples/zshow'      => 'apples#zshow'
  get    'apples/21show'      => 'apples#21show'
  get    'apples/22show'      => 'apples#22show'
  get    'apples/23show'      => 'apples#23show'
  get    'apples/24show'      => 'apples#24show'
  get    'apples/25show'      => 'apples#25show'
  get    'apples/26show'      => 'apples#26show'
  get    'apples/27show'      => 'apples#27show'
  get    'apples/28show'      => 'apples#28show'
  get    'apples/29show'      => 'apples#29show'
  get    'apples/01show'      => 'apples#01show'
  get    'apples/02show'      => 'apples#02show'
  get    'apples/03show'      => 'apples#03show'
  get    'apples/04show'      => 'apples#04show'
  get    'apples/05show'      => 'apples#05show'
  get    'apples/06show'      => 'apples#06show'
  get    'apples/07show'      => 'apples#07show'
  get    'apples/08show'      => 'apples#08show'
  get    'apples/09show'      => 'apples#09show'
  get    'apples/010show'      => 'apples#010show'
  get    'apples/011show'      => 'apples#011show'

  resources :apples
  resources :grapes
  resources :merons
  root 'apples#top'
  devise_for :users
# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
