Rails.application.routes.draw do
  root 'parser#index'

  get 'parser/index'
  post 'parser/post'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
