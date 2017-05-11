Rails.application.routes.draw do
  resources :invoices
  resources :reminders
  match ':controller/:action/:id',via: [:get ,:post]
  #get 'reminders/send'

  #post 'reminders/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
