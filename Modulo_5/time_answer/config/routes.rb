Rails.application.routes.draw do
  namespace :profiles_backoffice do
    get 'welcome/index'
  end
  namespace :admins_backoffice do
    get 'welcome/index'
  end
  namespace :admins__backoffice do
    get 'welcome/index'
  end
  namespace :profiles__backoffice do
    get 'welcome/index'
  end
  devise_for :profiles
  devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
