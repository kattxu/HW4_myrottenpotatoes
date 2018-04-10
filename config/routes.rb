Myrottenpotatoes::Application.routes.draw do

  get 'reviews/new'

  get 'reviews/create'

resources :movies do
    resources :reviews
end

get 'static_pages/home'
get 'static_pages/help'
root :to => redirect('/movies')

get  'auth/:provider/callback' => 'sessions#create',:as => 'login'
get 'logout' => 'sessions#destroy'
get  'auth/failure' => 'sessions#failure'
end
