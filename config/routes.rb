Rails.application.routes.draw do
  resources :videos do
    get :title, to: 'videos#title'
  end
end
