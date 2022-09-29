Rails.application.routes.draw do
  namespace :public do
    get 'orders/new'
    get 'orders/complete'
    get 'orders/index'
    get 'orders/show'
  end
  namespace :public do
    get 'cart_items/index'
  end
  namespace :public do
    get 'customers/show'
    get 'customers/edit'
    get 'customers/unsubscribe'
  end
  namespace :public do
    get 'items/show'
    get 'items/index'
  end
  namespace :public do
    get 'homes/top'
    get 'homes/about'
  end
  namespace :admin do
    get 'items/index'
    get 'items/show'
    get 'items/edit'
    get 'items/new'
  end
  namespace :admin do
    get 'sessions/new'
  end
  namespace :admin do
    get 'homes/top'
  end
  namespace :admin do
    get 'genres/index'
    get 'genres/edit'
  end
  namespace :admin do
    get 'orders/show'
  end
  namespace :admin do
    get 'customers/admin/orders'
    get 'customers/admin/order_details'
    get 'customers/admin/genres'
    get 'customers/admin/items'
    get 'customers/admin/homes'
    get 'customers/admin/sessions'
  end
  devise_for :admin, skip: [:registrations, :passwords], controllers: {
    sessions: "admin/sessions"
  }

  devise_for :customers, skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: "public/sessions"
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
