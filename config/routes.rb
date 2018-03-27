Myrottenpotatoes::Application.routes.draw do

resources :movies

get 'static_pages/home'
get 'static_pages/help'
root :to => redirect('/movies')

get  'auth/:provider/callback' => 'sessions#create',:as => 'login'
post 'logout' => 'sessions#destroy'
get  'auth/failure' => 'sessions#failure'
end
