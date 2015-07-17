module Foo
  class Engine < ::Rails::Engine
    isolate_namespace Foo

    routes.draw do
      get 'login', to: 'sessions#new'
    end
  end
end
