Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'welcome#index'
  get '/index/', to: 'welcome#index'
  #这里因为定义了articles为resources所以rails自动设置了CRUD所有的操作
  #其中 new_article GET    /articles/new(.:format)      articles#new
  # 所以我们在controller中定义新建动作就用这个new
  resources :articles
end
