Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'articles#index'
  # get '/' => 'home#index'
  # get '/'だとHelperのPathが生成されないのでrootで定義する
  resources  :articles, only: [:show, :new, :create, :edit]
end
