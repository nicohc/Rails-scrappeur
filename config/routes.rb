Rails.application.routes.draw do

root 'cryptolists#home'

post '/', to: 'cryptolists#search'
  get 'cryptolists/search'

  get 'cryptolists/home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
