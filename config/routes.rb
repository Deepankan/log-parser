Rails.application.routes.draw do
  match '/parse_file', to: 'loggers#parse_file', as: 'parse_file', via: [:post]
  root :to => 'loggers#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
