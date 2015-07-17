Rails.application.routes.draw do
  mount Foo::Engine, at: '/foo'

  get 'login', to: 'sessions#new'

  root 'welcome#index'
end
