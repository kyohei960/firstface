Rails.application.routes.draw do

  devise_for :admin, skip: [:registrations, :passwords], controllers: {
    sessions: "admin/sessions"
  }

  devise_for :customers, skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: "public/sessions"
  }
    scope module: :public do
    root to: "homes#top"
    get '/about' => 'homes#about', as: 'about'
    
    resources :items, only: [:index, :show]
    
    get '/mypage' => 'public#show'
    get '/mypage' => 'public#edit'
    patch '/mypage' => 'public#update'
    get '/mypage/unsubscribe' => 'public#unsubscribe', as: 'unsubscribe'
    patch '/mypage/withdraw' => 'public#withdraw', as: 'withdraw'
    
    delete '/cart_items/destroy_all' => 'cart_items#destroy_all'
    resources :cart_items, only: [:index, :update, :destroy, :create]
    
    post '/orders/confirmation' => 'orders#confirmation'
    get '/orders/complete' => 'orders#complete'
    resources :orders, only: [:index, :show, :new, :create]
    
    resources :addresses, only: [:index, :create, :edit, :update, :destroy]
    
    get "/items/genre_search/:id" => "items#genre_search", as: 'items_genre_search'
    end
end
